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
package com.spring.cloud.hystrix.ribbon.pojo;

/**
 * <pre> User, TODO: add Class Javadoc here. </pre>
 *
 * @author chiahung.hung
 */
public class User {
  
  private String name;
  private Integer age;

  /**
   * @return the name
   */
  public String getName() {
    return name;
  }

  /**
   * @param name the name to set
   */
  public void setName(String name) {
    this.name = name;
  }

  /**
   * @return the age
   */
  public Integer getAge() {
    return age;
  }

  /**
   * @param age the age to set
   */
  public void setAge(Integer age) {
    this.age = age;
  }

}