/**
 * KK Owner CONFIDENTIAL
 * 
 * @Package: com.data.redis.conf
 * @FileName: RedisConfig.java
 * @author: chiahung.hung
 * @date: 2020/1/16, 下午 08:45:51
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
package com.data.redis.conf;

import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.interceptor.KeyGenerator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;

/**
 * The Class RedisConfig.
 * 
 * <pre>
 * 
 * </pre>
 */
@Configuration
@EnableCaching
public class RedisConfig extends CachingConfigurerSupport {

  /**
   * Jedis connection factory.
   *
   * @return the jedis connection factory
   */
  @Bean
  JedisConnectionFactory jedisConnectionFactory() {
    return new JedisConnectionFactory();
  }

  /**
   * Cache manager. spring boot 2.0.x以上版本的使用方式
   * 
   * @param redisConnectionFactory the redis connection factory
   * @return the cache manager
   */
  @SuppressWarnings("rawtypes")
  @Bean
  public CacheManager cacheManager(RedisConnectionFactory redisConnectionFactory) {
    RedisCacheManager rcm = RedisCacheManager.builder(redisConnectionFactory).build();
    return rcm;
  }



  /**
   * 自定義生成 redis-key
   * 
   * (non-Javadoc)
   * 
   * @see org.springframework.cache.annotation.CachingConfigurerSupport#keyGenerator()
   */
  @Override
  public KeyGenerator keyGenerator() {
    return (o, method, objects) -> {
      StringBuilder sb = new StringBuilder();
      sb.append(o.getClass().getName()).append(".");
      sb.append(method.getName()).append(".");
      for (Object obj : objects) {
        sb.append(obj.toString());
      }
      System.out.println("keyGenerator=" + sb.toString());
      return sb.toString();
    };

  }

  /**
   * Redis template.
   *
   * @param redisConnectionFactory the redis connection factory
   * @return the redis template
   */
  @Bean
  public RedisTemplate redisTemplate(RedisConnectionFactory redisConnectionFactory) {
    
    RedisTemplate template = new RedisTemplate();
    template.setConnectionFactory(redisConnectionFactory);
    template.setKeySerializer(new StringRedisSerializer());
    template.setValueSerializer(new RedisObjectSerializer());

    return template;
  }



}
