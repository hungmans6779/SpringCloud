package hello;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.spring.hello.HelloApplication;
import com.spring.hello.controller.HelloController;

import static org.hamcrest.Matchers.equalTo;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 * @作者 kevinhung
 * @EMAIL hungmans6779@msn.com
 * @創建時間：2024年1月25日下午11:08:49
 * @類別說明
 **/

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = HelloApplication.class)
@WebAppConfiguration
public class HelloApplicationTests {

  private MockMvc mvc;

  @Before
  public void setUp() throws Exception {
    mvc = MockMvcBuilders.standaloneSetup(new HelloController()).build();
  }

  @Test
  public void hello() throws Exception {
    mvc.perform(
        MockMvcRequestBuilders.get("/hello").accept(MediaType.APPLICATION_JSON))
        .andExpect(status().isOk())
        .andExpect(content().string(equalTo("Hello Spring Boot (使用 OpenJDK17,Spring-boot 3.2.2)")));
  }

}
