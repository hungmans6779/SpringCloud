/**
 * 
 */
package com.mybatis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mybatis.mapper.ProductMapper;
import com.mybatis.pojo.Product;

/**
 * @author HackerK
 *
 */
@RestController
public class ProductionController {

	@Autowired
	private ProductMapper productMapper;

	@GetMapping("/queryProducts")
	public List<Product> queryProducts(){
	
	  return productMapper.queryProducts();
	}
	
	
	
}
