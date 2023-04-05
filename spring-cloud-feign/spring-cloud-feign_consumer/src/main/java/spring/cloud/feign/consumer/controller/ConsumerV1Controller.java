/**
 * KK Owner CONFIDENTIAL
 * @Package:  com.spring.cloud.feign.consumer.controller
 * @FileName: ConsumerV1Controller.java
 * @author:   chiahung.hung
 * @date:     2021/7/16, 上午 08:24:27
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
package spring.cloud.feign.consumer.controller;
import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import spring.cloud.feign.consumer.dto.User;
import spring.cloud.feign.consumer.service.HelloService;




/**
 * <pre> ConsumerController, TODO: add Class Javadoc here. </pre>
 *
 * @author chiahung.hung
 */
@RestController
@RequestMapping("/v1")
public class ConsumerV1Controller {

  /** The hello service. */
  @Autowired
  private HelloService helloService;
  

  /**
   * Hello consumer.
   *
   * @return the string
   * @throws Exception the exception
   */
  @RequestMapping("/feign-consumer-hello")
  public String helloConsumer() throws Exception {
    return helloService.hello();
  }
  
  
 
  /**
   * Hello consumer.
   *
   * @param name the name
   * @return the string
   */
  @RequestMapping(value="/feign-consumer-hello1", method = RequestMethod.GET)
  public String helloConsumer(@RequestParam(value="name", defaultValue="Feign") String name)  {
    return helloService.hello(name);
  }
  
  
  
  /**
   * Hello consumer.
   *
   * @param name the name
   * @param age the age
   * @return the user
   */
  @RequestMapping(value="/feign-consumer-hello2", method = RequestMethod.GET)
  public User helloConsumer(@RequestHeader("name") String name, @RequestHeader("age") Integer age) {
    return helloService.hello(name, age);
  }
  
  
  
  /**
   * Hello consumer.
   *
   * @param user the user
   * @return the string
   */
  @RequestMapping(value="/feign-consumer-hello3", method = RequestMethod.POST)
  public String helloConsumer(@RequestBody User user) {
    return helloService.hello(user);
  }  
   
  
}