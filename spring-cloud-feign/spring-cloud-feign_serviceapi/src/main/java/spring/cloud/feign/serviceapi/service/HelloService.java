/**
 * KK Owner CONFIDENTIAL
 * @Package:  com.spring.cloud.feign.consumer.service
 * @FileName: HelloService.java
 * @author:   chiahung.hung
 * @date:     2021/7/16, 上午 08:25:19
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
package spring.cloud.feign.serviceapi.service;

import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.cloud.feign.serviceapi.dto.User;




/**
 * <pre>
 *  HelloService, TODO: add Class Javadoc here.
 * </pre>
 *
 * @author chiahung.hung
 */
@RequestMapping("/refactor")
public interface HelloService {

	/**
	 * Hello.
	 *
	 * @param name the name
	 * @return the string
	 */
	@RequestMapping(value = "/hello4", method = RequestMethod.GET)
	public String hello(@RequestParam(value = "name", defaultValue = "Feign") String name);

	/**
	 * Hello.
	 *
	 * @param name the name
	 * @param age  the age
	 * @return the user
	 */
	@RequestMapping(value = "/hello5", method = RequestMethod.GET)
	public User hello(@RequestHeader("name") String name, @RequestHeader("age") Integer age);

	/**
	 * Hello.
	 *
	 * @param user the user
	 * @return the string
	 */
	@RequestMapping(value = "/hello6", method = RequestMethod.POST)
	public String hello(@RequestBody User user);

	
}