/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.spring.cloud.ribbon
 * @FileName: ConsumerApplication.java
 * @author: chiahung.hung
 * @date: 2019/8/22, 上午 08:40:46
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
package com.spring.cloud.ribbon;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;


/**
 * The Class ConsumerApplication.
 * 
 * 【功能處理說明】： 消費服務
 * 
 *  @EnableDiscoveryClient : 應用註冊為 Eureka 用戶端應用，以獲得服務發現能力。 同時在主類別建立 RestTemplate 的 Spring Bean 實例，
 *                           並透過 @LoadBalanced 開啟用戶端負載平衡。
 */
@EnableDiscoveryClient
@SpringBootApplication
public class ConsumerApplication {

  /**
   * Rest template.
   *
   * @return the rest template
   */
  @Bean
  @LoadBalanced
  RestTemplate restTemplate() {
    return new RestTemplate();
  }


  /**
   * The main method.
   *
   * @param args the arguments
   */
  public static void main(String[] args) {
    SpringApplication.run(ConsumerApplication.class, args);
  }

}