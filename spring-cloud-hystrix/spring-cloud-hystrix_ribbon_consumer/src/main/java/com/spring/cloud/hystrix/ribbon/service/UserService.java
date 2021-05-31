/**
 * KK Owner CONFIDENTIAL
 * @Package:  com.spring.cloud.hystrix.ribbon.service
 * @FileName: UserService.java
 * @author:   chiahung.hung
 * @date:     2021/1/5, 下午 04:30:38
 * 
 * <pre>
 *  Copyright 2013-2014 The KK Owner Co., Ltd. all rights reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of KK Owner Co., Ltd. and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to KK Owner Co., Ltd. and its suppliers
 *  and may be covered by TAIWAN and Foreign Patents, patents in 
 *  process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from KK Owner Co., Ltd.
 *  </pre>
 */
package com.spring.cloud.hystrix.ribbon.service;

import java.util.concurrent.Future;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.netflix.hystrix.contrib.javanica.command.AsyncResult;
import com.spring.cloud.hystrix.ribbon.pojo.User;

import rx.Observable;
import rx.Subscriber;

/**
 * The Class UserService.
 * 
 * <pre>
 * 
 * </pre>
 */
@Service
public class UserService {

  /** The rest template. */
  @Autowired
  private RestTemplate restTemplate;


  /**
   * 同步執行的實現
   * 
   * Gets the user by id.
   *
   * @param id the id
   * @return the user by id
   */
  @HystrixCommand(fallbackMethod="defaultUser")
  public User getUserById(Long id) {
    return restTemplate.getForObject("http://USER-SERVICE/users/{1}", User.class, id);
  }

  


  /**
   * 非同步執行的實現
   * 
   * Gets the user by id async.
   *
   * @param id the id
   * @return the user by id async
   */
  @HystrixCommand(fallbackMethod="defaultUser")
  public Future<User> getUserByIdAsync(final String id) {
    return new AsyncResult<User>() {
      public User invoke() {
        return restTemplate.getForObject("http://USER-SERVICE/users/{1}", User.class, id);
      }
    };
  }



  /**
   * Gets the user by id.
   *
   * @param id the id
   * @return the user by id
   */
  @HystrixCommand(fallbackMethod="defaultUser")
  public Observable<User> getUserById(final String id) {
    
    return Observable.create(new Observable.OnSubscribe<User>() {

      @Override
      public void call(Subscriber<? super User> observable) {

        try {

          if (!observable.isUnsubscribed()) {
            User user = restTemplate.getForObject("http://USER-SERVICE/users/{1}", User.class, id);
            observable.onNext(user);
            observable.onCompleted();
          }

        } catch (RestClientException e) {
          e.printStackTrace();
        } catch (Exception e) {
          observable.onError(e);
        }

      }

    });
  }


  
  private User defaultUser() {
    return new User();
  }

  
  
}