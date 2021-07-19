/**
 * KK Owner CONFIDENTIAL
 * @Package:  com.spring.cloud.feign.consumer.controller
 * @FileName: ConsumerV2Controller.java
 * @author:   chiahung.hung
 * @date:     2021/7/16, 上午 08:24:34
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

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import spring.cloud.feign.consumer.dto.User;
import spring.cloud.feign.consumer.service.HelloService;


/**
 * <pre> ConsumerController, TODO: add Class Javadoc here. </pre>
 *
 * @author chiahung.hung
 */
@RestController
@RequestMapping("/v2")
public class ConsumerV2Controller {

  /** The hello service. */
  @Autowired
  private HelloService helloService;
    
  /**
   * Hello consumer.
   *
   * @return the string
   */
  @RequestMapping(value="/feign-consumer-hello4", method = RequestMethod.GET)
  public String helloConsumer() {
    
    StringBuilder sb = new StringBuilder();
    sb.append(helloService.hello()).append("\n");
    sb.append(helloService.hello("KEVIN")).append("\n");
    sb.append(helloService.hello("KK",18)).append("\n");
    sb.append(helloService.hello(new User("富邦人",60))).append("\n");
    
    return sb.toString();
  }  
   
}