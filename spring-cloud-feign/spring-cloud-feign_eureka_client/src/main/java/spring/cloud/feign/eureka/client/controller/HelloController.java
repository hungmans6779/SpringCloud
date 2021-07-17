/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.spring.cloud.hystrix.eureka.client.controller
 * @FileName: HelloController.java
 * @author: chiahung.hung
 * @date: 2020年12月11日, 下午3:33:44
 * 
 *        <pre>
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
package spring.cloud.feign.eureka.client.controller;

import org.jboss.logging.Logger;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import spring.cloud.feign.eureka.client.pojo.User;




// TODO: Auto-generated Javadoc
/**
 * <pre> HelloController, TODO: add Class Javadoc here. </pre>
 *
 * @author chiahung.hung
 */
@RestController
public class HelloController {

  
  /** The logger. */
  private final Logger logger = Logger.getLogger(getClass());

  /** The port. */
  @Value("${server.port}")
  private String port;

  
  /**
   * Hello.
   *
   * @return the string
   */
  @RequestMapping("/hello")
  public String hello() {
    
    logger.info("/hello, port : " + port);
    
    return "/hello, port : " + port;
  }

 
  
  /**
   * Hello.
   *
   * @param name the name
   * @return the string
   */
  @RequestMapping(value = "/hello1", method = RequestMethod.GET)
  public String hello(@RequestParam(value="name", defaultValue="Feign") String name) {
    
    logger.info("/hello1,  port : " + port + ", name : " + name);
 
    return "/hello1,  port : " + port + ", name : " + name;
  }


  
  /**
   * Hello.
   *
   * @param name the name
   * @param age the age
   * @return the user
   */
  @RequestMapping(value = "/hello2", method = RequestMethod.GET)
  public User hello(@RequestHeader String name, @RequestHeader Integer age) {
    
    logger.info("/hello2,  port : " + port + ", name : " + name + ", age " + age);
  
    return new User(name, age); 
  }
  
  
  
  /**
   * Hello.
   *
   * @param user the user
   * @return the string
   */

  @RequestMapping(value = "/hello3", method = RequestMethod.POST)
  public String hello(@RequestBody User user) {
    
    logger.info("/hello3,  port : " + port + ", name : " + user.getName() + ", age " + user.getAge());
    
    return "/hello3,  port : " + port + ", name : " + user.getName() + ", age " + user.getAge();
  }

  
}