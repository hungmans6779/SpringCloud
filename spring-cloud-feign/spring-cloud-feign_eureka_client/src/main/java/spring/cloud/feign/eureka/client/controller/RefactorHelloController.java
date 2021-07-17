package spring.cloud.feign.eureka.client.controller;

import org.jboss.logging.Logger;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

import spring.cloud.feign.serviceapi.dto.User;
import spring.cloud.feign.serviceapi.service.HelloService;



public class RefactorHelloController implements HelloService {

	/** The logger. */
	private final Logger logger = Logger.getLogger(getClass());

	/** The port. */
	@Value("${server.port}")
	private String port;

	@Override
	public String hello(@RequestParam(value = "name", defaultValue = "Feign") String name) {

		logger.info("/hello4,  port : " + port + ", name : " + name);

		return "/hello4,  port : " + port + ", name : " + name;
	}

	@Override
	public User hello(@RequestHeader("name") String name, @RequestHeader("age") Integer age) {

		logger.info("/hello5,  port : " + port + ", name : " + name + ", age " + age);

		return new User(name, age);
	}

	@Override
	public String hello(@RequestBody User user) {

		logger.info("/hello6,  port : " + port + ", name : " + user.getName() + ", age " + user.getAge());

		return "/hello6,  port : " + port + ", name : " + user.getName() + ", age " + user.getAge();
	}

}
