package com.devmaster.admin.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class CateroryController {
	@RequestMapping("category")
	public String index() {

		return "admin/category";
	}
}
