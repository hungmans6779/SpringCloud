/**
 * FUBON ESB CONFIDENTIAL
 * @Package:  com.spring.hello
 * @FileName: HelloApplicationTests.java
 * @author:   chiahung.hung
 * @date:     2019/3/20, 下午 06:50:39
 * 
 * <pre>
 *  Copyright 2019-2020 The FUBON ESB Co., Ltd. all rights reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of FUBON ESB Co., Ltd. and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to FUBON ESB Co., Ltd. and its suppliers
 *  and may be covered by TAIWAN and Foreign Patents, patents in 
 *  process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from FUBON ESB Co., Ltd.
 *  </pre>
 */
package com.spring.hello;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.hamcrest.Matchers.equalTo;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.spring.hello.web.HelloController;

/**
 * The Class HelloApplicationTests.
 * 
 * <pre>
 * 
 * </pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = HelloApplication.class)
@WebAppConfiguration
public class HelloApplicationTests {

  /** The mvc. */
  private MockMvc mvc;

  /**
   * Sets the up.
   *
   * @throws Exception
   *           the exception
   */
  @Before
  public void setUp() throws Exception {
    mvc = MockMvcBuilders.standaloneSetup(new HelloController()).build();
  }

  
  /**
   * Hello.
   *
   * @throws Exception
   *           the exception
   */
  @Test
  public void hello() throws Exception {
    mvc.perform(
        MockMvcRequestBuilders.get("/hello").accept(MediaType.APPLICATION_JSON))
        .andExpect(status().isOk()).andExpect(content()
            .string(equalTo("Hello Spring Boot (使用版本 1.3.7.RELEASE)")));
  }

  

  
}
