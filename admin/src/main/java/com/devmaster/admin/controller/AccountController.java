package com.devmaster.admin.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AccountController {
	@RequestMapping("account")
	public String index() {

		return "admin/account";
	}

}
