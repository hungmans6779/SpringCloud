/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.spring.hello.web
 * @FileName: HelloController.java
 * @author: chiahung.hung
 * @date: 2019/8/22, 上午 09:39:30
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
package com.spring.hello.web;

import org.springframework.web.bind.annotation.RequestMapping;
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


  /**
   * Index.
   *
   * @return the string
   */
  @RequestMapping("/hello")
  public String hello() {
    return "Hello Spring Boot (使用版本 1.3.7.RELEASE)";
  }

  
}