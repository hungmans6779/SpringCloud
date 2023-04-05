/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.spring.cloud.hystrix.ribbon.pojo
 * @FileName: User.java
 * @author: chiahung.hung
 * @date: 2021年1月5日, 上午10:35:03
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
package spring.cloud.feign.eureka.client.pojo;

/**
 * <pre>
 *  User, TODO: add Class Javadoc here.
 * </pre>
 *
 * @author chiahung.hung
 */
public class User {

	/** The name. */
	private String name;

	/** The age. */
	private Integer age;

	public User(String name, Integer age) {
		super();
		this.name = name;
		this.age = age;
	}

	/**
	 * Gets the name.
	 *
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the name.
	 *
	 * @param name the new name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Gets the age.
	 *
	 * @return the age
	 */
	public Integer getAge() {
		return age;
	}

	/**
	 * Sets the age.
	 *
	 * @param age the new age
	 */
	public void setAge(Integer age) {
		this.age = age;
	}

	/**
	 * To string.
	 *
	 * @return the string
	 */
	public String toString() {
		return "/hello2,  name : " + name + ", age " + age;
	}

}