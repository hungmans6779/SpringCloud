/**
 * KK Owner CONFIDENTIAL
 * @Package:  com.spring.cloud.hystrix.ribbon
 * @FileName: SpringCloudHystrixRibbonConsumerApplication.java
 * @author:   chiahung.hung
 * @date:     2020/12/11, 下午 03:37:44
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
package com.spring.cloud.hystrix.ribbon;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/**
 * The Class SpringCloudHystrixRibbonConsumerApplication.
 * 
 * <pre>
 * 
 * </pre>
 */

@EnableCircuitBreaker
@EnableDiscoveryClient
@SpringCloudApplication
public class SpringCloudHystrixRibbonConsumerApplication {

  /**
   * Rest template.
   *
   * @return the rest template
   */

  @Bean
  @LoadBalanced
  RestTemplate restTempalte() {
    return new RestTemplate();
  }
  
  
  /**
   * The main method.
   *
   * @param args the arguments
   */
  public static void main(String[] args) {
    SpringApplication.run(SpringCloudHystrixRibbonConsumerApplication.class, args);
  }
 
  
}