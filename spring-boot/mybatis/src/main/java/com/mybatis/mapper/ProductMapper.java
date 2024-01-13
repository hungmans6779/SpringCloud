/**
 * 
 */
package com.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mybatis.pojo.Product;

/**
 * @author HackerK
 *
 */
@Mapper // 這個註解表示了這個類是一個mybatis的mapper介面類
@Repository
public interface ProductMapper {

	public List<Product> queryProducts();

}
