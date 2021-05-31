/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.spring.cloud.ribbon.controller
 * @FileName: ConsumerController.java
 * @author: chiahung.hung
 * @date: 2019/8/27, 上午 10:39:27
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
package com.spring.cloud.ribbon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;


/**
 * The Class ConsumerController.
 * 
 * <pre>
 * 
 * </pre>
 */
@RestController
public class ConsumerController {

  /** The rest template. */
  @Autowired
  RestTemplate restTemplate;
  
  /**
   * Hello consumer.
   *
   * @return the string
   */
  @RequestMapping(value = "/ribbon-consumer", method = RequestMethod.GET)
  public String ribbonConsumer() { 
    
    String info = restTemplate.getForEntity("http://hello-service/hello", String.class).getBody();
    
    return info;
  }

}