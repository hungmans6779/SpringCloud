package com.spring.cloud.hystrix.ribbon.model;

import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.netflix.hystrix.HystrixObservableCommand;
import com.spring.cloud.hystrix.ribbon.pojo.User;

import rx.Observable;
import rx.Subscriber;

public class UserObservableCommand extends HystrixObservableCommand<User> {

  /** The rest template. */
  private RestTemplate restTemplate;
  
  /** The id. */
  private Long id;

  public UserObservableCommand(Setter setter, RestTemplate restTemplate, Long id) {
    super(setter);
    this.restTemplate = restTemplate;
    this.id = id;
  }

  
  /* (non-Javadoc)
   * @see com.netflix.hystrix.HystrixObservableCommand#construct()
   */
  @Override
  protected Observable<User> construct() {
  
    return Observable.create(new Observable.OnSubscribe<User>() {

      @Override
      public void call(Subscriber<? super User> observable) {
       
        try {
    
          if(!observable.isUnsubscribed()) {
            User user =  restTemplate.getForObject("http://USER-SERVICE/users/{1}", User.class, id);
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
  
}