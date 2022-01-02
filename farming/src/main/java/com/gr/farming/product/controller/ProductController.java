package com.gr.farming.product.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger
	=LoggerFactory.getLogger(ProductController.class);
	
	
	@RequestMapping("/productDetail")
	public String productDetail() {
		logger.info("상품상세");
		return "product/productDetail";
	}
}
