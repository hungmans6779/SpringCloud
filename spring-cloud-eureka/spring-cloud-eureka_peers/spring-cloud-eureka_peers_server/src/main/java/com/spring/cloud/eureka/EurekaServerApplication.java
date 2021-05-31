/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.spring.cloud.eureka
 * @FileName: EurekaServerApplication.java
 * @author: chiahung.hung
 * @date: 2019/8/22, 上午 09:43:30
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
package com.spring.cloud.eureka;

import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * The Class EurekaServerApplication.
 * 
 * <pre>
 * 
 * </pre>
 */
@EnableEurekaServer
@SpringBootApplication
public class EurekaServerApplication {

  /**
   * The main method.
   *
   * @param args the arguments
   */
  public static void main(String[] args) {
    new SpringApplicationBuilder(EurekaServerApplication.class).web(true).run(args);
  }

}