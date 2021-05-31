/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.spring.cloud.eureka.controller
 * @FileName: HelloController.java
 * @author: chiahung.hung
 * @date: 2019/8/22, 上午 09:42:52
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
package com.spring.cloud.eureka.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * The Class HelloController.
 * 
 * <pre>
 * 
 * </pre>
 */
@RestController
public class HelloController {

  /** The logger. */
  private final Logger logger = Logger.getLogger(getClass());

  /** The client. */
  @Autowired
  private DiscoveryClient client;
  
  /**
   * Index.
   *
   * @return the string
   */
  @RequestMapping(value = "/hello", method = RequestMethod.GET)
  public String hello() {

    ServiceInstance instance = client.getLocalServiceInstance();
   
    logger.info("\n");
    logger.info(HelloController.class.getName());
    logger.info("host       = " + instance.getHost());
    logger.info("service_id = " + instance.getServiceId());
    logger.info("port       = " + instance.getPort());
    
    return "Hello, Spring Cloud Eureka Client (peer)";
  }

}