package com.devmaster.admin.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class OrderController {
	@RequestMapping("oder")
	public String views() {
		return "admin/oder";
	}
}
