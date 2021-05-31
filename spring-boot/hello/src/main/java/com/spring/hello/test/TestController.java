package com.spring.hello.test;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
  * @version 建立時間：2020年1月2日 上午10:14:54
  * @function：
 */
@RestController
public class TestController {
  
  @RequestMapping("/test")
  public String index() {
    return "Test Application";
  }

}
