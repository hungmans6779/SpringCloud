/**
 * KK Owner CONFIDENTIAL
 * @Package:  com.data.redis.conf
 * @FileName: RedisObjectSerializer.java
 * @author:   chiahung.hung
 * @date:     2020/1/16, 下午 08:50:51
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
package com.data.redis.conf;

import org.springframework.core.convert.converter.Converter;
import org.springframework.core.serializer.support.DeserializingConverter;
import org.springframework.core.serializer.support.SerializingConverter;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.SerializationException;

/**
 * The Class RedisObjectSerializer.
 * 
 * <pre>
 * 
 * </pre>
 *
 * @version 建立時間：2020年1月16日 下午7:19:09 @function： redis 序列化方法
 */
public class RedisObjectSerializer implements RedisSerializer<Object> {


  /** The serializer. */
  private Converter<Object, byte[]> serializer = new SerializingConverter();
  
  /** The deserializer. */
  private Converter<byte[], Object> deserializer = new DeserializingConverter();

  /** The Constant EMPTY_ARRAY. */
  static final byte[] EMPTY_ARRAY = new byte[0];

  /* (non-Javadoc)
   * @see org.springframework.data.redis.serializer.RedisSerializer#deserialize(byte[])
   */
  public Object deserialize(byte[] bytes) {
    if (isEmpty(bytes)) {
      return null;
    }

    try {
      return deserializer.convert(bytes);
    } catch (Exception ex) {
      throw new SerializationException("Cannot deserialize", ex);
    }
  }

  /* (non-Javadoc)
   * @see org.springframework.data.redis.serializer.RedisSerializer#serialize(java.lang.Object)
   */
  public byte[] serialize(Object object) {
    if (object == null) {
      return EMPTY_ARRAY;
    }

    try {
      return serializer.convert(object);
    } catch (Exception ex) {
      return EMPTY_ARRAY;
    }
  }

  /**
   * Checks if is empty.
   *
   * @param data the data
   * @return true, if is empty
   */
  private boolean isEmpty(byte[] data) {
    return (data == null || data.length == 0);
  }



}
