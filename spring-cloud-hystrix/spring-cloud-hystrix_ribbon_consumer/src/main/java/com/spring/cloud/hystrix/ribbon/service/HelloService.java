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
package com.spring.cloud.hystrix.ribbon.service;

import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixProperty;

/**
 * <pre> HelloService, TODO: add Class Javadoc here. </pre>
 *
 * @author chiahung.hung
 */
@Service
public class HelloService {

  /** The logger. */
  private final Logger logger = Logger.getLogger(getClass());

  @Autowired
  RestTemplate restTemplate;
  
  
  
  @HystrixCommand(fallbackMethod="helloFallback", commandKey="helloKey")
  public String helloService() {
    
    long start = System.currentTimeMillis();
    
    ResponseEntity<String> responseEntity = restTemplate.getForEntity("http://hello-service/hello", String.class);
    String body = responseEntity.getBody();

    long end = System.currentTimeMillis();
    
    
    logger.info("Spend time : " + (end - start));
    
    return body.toString();
  } // end helloService

 
  
  private String helloFallback() {
    return "error";
  }
  
  
  
  
  
  
  /**
   * 
   * 實現這種隔離的線程池
   * (研究用)
   *
   **/
  @HystrixCommand(fallbackMethod = "buildFallbackLicenseList",
                  threadPoolKey = "licenseByOrgThreadPool",
                  threadPoolProperties = {
                                           @HystrixProperty(name="coreSize", value="30"),
                                           @HystrixProperty(name="maxQueueSize", value="10")
                  }
  )
  public List getLicensesByOrg(String orgnizationId){
     return null;
  }

  
  
}