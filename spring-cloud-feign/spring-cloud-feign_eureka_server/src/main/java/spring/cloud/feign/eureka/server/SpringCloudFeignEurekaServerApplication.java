/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.spring.cloud.hystrix.eureka.server
 * @FileName: SpringCloudHystrixEurekaServerApplication.java
 * @author: chiahung.hung
 * @date: 2020/12/11, 下午 03:05:48
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
package spring.cloud.feign.eureka.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * The Class SpringCloudHystrixEurekaServerApplication.
 * 
 * <pre>
 * 
 * </pre>
 */
@EnableEurekaServer
@SpringBootApplication
public class SpringCloudFeignEurekaServerApplication {

  /**
   * The main method.
   *
   * @param args the arguments
   */
  public static void main(String[] args) {
    SpringApplication.run(SpringCloudFeignEurekaServerApplication.class, args);
  }

}