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
package com.spring.cloud.hystrix.eureka.client.controller;

import java.util.List;
import java.util.Random;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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

  /** The discovery client. */
  @Autowired
  private DiscoveryClient client;


  @RequestMapping(value="/hello", method=RequestMethod.GET)
  public String hello(@RequestParam(value="name", defaultValue="hello Spring") String name) throws Exception {
    
    // 熔斷測試(超過 1秒即進入熔斷)
    int sleepTime = new Random().nextInt(10);
    logger.info("/hello, sleepTime ： " + sleepTime + ", name : " + name + ", port : " + port);
    Thread.sleep(sleepTime);
    
    return "Spring Cloud Hystrix, name : " + name + ", port : " + port;
  }

  
  
  /*
   * URL 使用案例
   * 
   * http://provider1:8081/service-instances/hello-service
   * http://provider2:8082/service-instances/hello-service
   */
  @RequestMapping(value="/service-instances/{applicationName}", method=RequestMethod.GET)
  public List<ServiceInstance> serviceInstancesByApplicationName(@PathVariable String applicationName) {  
    
    logger.info("applicationName = " + applicationName);
    
    return this.client.getInstances(applicationName);
  }
  
  
}