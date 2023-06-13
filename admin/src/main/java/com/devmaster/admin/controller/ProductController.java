package com.devmaster.admin.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class ProductController {
	@RequestMapping("product")
	public String index() {
		return "admin/product";
	}
}
