package com.spring.hello.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * The Class HelloController.
 *
 * @作者 kevinhung
 * @E-mail：hungmans6779@msn.com 
 * @創建時間 創建時間：2024年1月10日下午11:48:57
 * @類別說明 
 */
@RestController
public class HelloController {

  /**
   * Hello.
   *
   * @return the string
   */
  @RequestMapping("/hello")
  public String hello() {
    return "Hello Spring Boot (使用 OpenJDK17,Spring-boot 3.2.111)";
  }
  
}  