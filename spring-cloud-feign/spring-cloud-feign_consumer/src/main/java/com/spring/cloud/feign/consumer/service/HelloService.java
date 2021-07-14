/**
 * KK Owner CONFIDENTIAL/
 * 
 * @Package: com.spring.cloud.hystrix.ribbon.service
 * @FileName: HelloService.java
 * @author: chiahung.hung
 * @date: 2020年12月29日, 下午3:23:02
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
package com.spring.cloud.feign.consumer.service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * <pre> HelloService, TODO: add Class Javadoc here. </pre>
 *
 * @author chiahung.hung
 */
@FeignClient("hello-service")
public interface HelloService {
  
  @RequestMapping("/hello")
  public String hello();
  
}