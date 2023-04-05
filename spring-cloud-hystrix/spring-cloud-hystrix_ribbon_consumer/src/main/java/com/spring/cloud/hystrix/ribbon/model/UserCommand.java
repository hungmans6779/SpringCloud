/**
 * KK Owner CONFIDENTIAL
 * @Package:  com.spring.cloud.hystrix.ribbon
 * @FileName: UserCommand.java
 * @author:   chiahung.hung
 * @date:     2021/1/5, 下午 03:27:44
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
package com.spring.cloud.hystrix.ribbon.model;

import org.springframework.web.client.RestTemplate;

import com.netflix.hystrix.HystrixCommand;
import com.spring.cloud.hystrix.ribbon.pojo.User;

/**
 * The Class UserCommand.
 * 
 * <pre>
 * 
 * </pre>
 */
public class UserCommand extends HystrixCommand<User> {

  /** The rest template. */
  private RestTemplate restTemplate;
  
  /** The id. */
  private Long id;


  /**
   * Instantiates a new user command.
   *
   * @param setter the setter
   * @param restTempate the rest tempate
   * @param id the id
   */
  public UserCommand(Setter setter, RestTemplate restTempate, Long id) {
     super(setter);
     this.restTemplate = restTemplate;
     this.id = id;
  }


  
  /* (non-Javadoc)
   * @see com.netflix.hystrix.HystrixCommand#run()
   */
  @Override
  protected User run() throws Exception {    
    return restTemplate.getForObject("http://USER-SERVICE/users/{1}", User.class, id);
  }



  /* (non-Javadoc)
   * @see com.netflix.hystrix.HystrixCommand#getFallback()
   */
  @Override
  protected User getFallback() {
    return new User();
  }
  
}