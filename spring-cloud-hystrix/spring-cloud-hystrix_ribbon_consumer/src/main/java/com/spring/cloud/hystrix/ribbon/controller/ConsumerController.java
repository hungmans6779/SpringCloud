/**
 * KK Owner CONFIDENTIAL
 * @Package:  com.spring.cloud.hystrix.ribbon.controller
 * @FileName: ConsumerController.java
 * @author:   chiahung.hung
 * @date:     2020年12月11日, 下午3:38:13
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
package com.spring.cloud.hystrix.ribbon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.cloud.hystrix.ribbon.service.HelloService;

/**
 * <pre> ConsumerController, TODO: add Class Javadoc here. </pre>
 *
 * @author chiahung.hung
 */
@RestController
public class ConsumerController {

  @Autowired
  private HelloService helloService;
  

  /**
   * Hello consumer.
   *
   * @return the string
   */
  @RequestMapping(value="/ribbon-consumer", method = RequestMethod.GET)
  public String helloConsumer() {
    return helloService.helloService();
  }
  
 
}