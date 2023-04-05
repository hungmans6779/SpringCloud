package com.data.redis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.stereotype.Service;

/**
 * @version 建立時間：2020年1月16日 下午8:11:02 @function：
 */
@Service
public class UserCacheRedisService {

  @Autowired
  RedisTemplate redisTemplate;


  public void hello() {
    redisTemplate.setKeySerializer(new StringRedisSerializer());
    ValueOperations ops = redisTemplate.opsForValue();
    ops.set("k1", "v1");
    Object k1 = ops.get("k1");
    System.out.println(k1);
  }


  @Autowired
  StringRedisTemplate stringRedisTemplate;

  public void hello2() {
    ValueOperations ops = stringRedisTemplate.opsForValue();
    ops.set("k2", "v2");
    Object k1 = ops.get("k2");
    System.out.println(k1);
  }

  
  

}
