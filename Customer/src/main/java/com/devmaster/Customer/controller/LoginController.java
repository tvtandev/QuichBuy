package com.devmaster.Customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.devmaster.Library.dto.CustomerDto;
import com.devmaster.Library.dto.LoginDto;
import com.devmaster.Library.model.Customer;
import com.devmaster.Library.service.impl.CustomerServiceImpl;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class LoginController {

	private final CustomerServiceImpl customerService;
	
	private final HttpSession session;

	@GetMapping("/signin")
	public String login(@ModelAttribute("loginDto") LoginDto loginDto) {
		return "page/login";
	}

	@GetMapping("/signup")
	public String sigup(@ModelAttribute("customerDto") CustomerDto customerDto) {
		return "page/signup";
	}

	@PostMapping("/do-login")
	public String doLogin(@Valid @ModelAttribute("loginDto") LoginDto loginDto, BindingResult result, Model model) {

		try {
			if (result.hasErrors()) {
				model.addAttribute("customerDto", loginDto);
				return "page/login";
			}
			// Get Username Roles Customer
			String userName = loginDto.getUserName();
			Customer customer = customerService.findByUsername(userName);

			if (customer != null) {
				// check password
				String pass = customer.getPassword();
				String pass1 = loginDto.getPassword();
				System.out.println(pass);
				System.out.println(pass1);
				if (pass.contains(pass1)) {
					// save account to session
					session.setAttribute("acc", customer);
					return "redirect:/";
				} else if (pass != pass1) {
					model.addAttribute("errpass", "Mật khẩu không chính xác");
					return "page/login";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "page/login";
	}

	@PostMapping("/do-signup")
	public String doSignup(@Valid @ModelAttribute("customerDto") CustomerDto customerDto, BindingResult result,
			Model model) {

		try {
			if (result.hasErrors()) {
				model.addAttribute("customerDto", customerDto);
				return "page/signup";
			}
			// get Customer by UserName
			String userName = customerDto.getUserName();
			Customer cusername = customerService.findByUsername(userName);

			// get Customer by Email
			String email = customerDto.getEmail();
			Customer emailCustomer = customerService.findByEmail(email);

			if (emailCustomer != null) {
				model.addAttribute("customerDto", customerDto);
				model.addAttribute("emailerr", "Địa chỉ email này đã được sử dụng");
				return "page/signup";
			}

			if (cusername != null) {
				model.addAttribute("customerDto", customerDto);
				model.addAttribute("usererr", "Tên đăng nhập đã được sử dụng");
				return "page/signup";
			}
			// check pas repeat
			if (customerDto.getPassword().equals(customerDto.getConfirmPassword())) {
				customerService.save(customerDto);
				model.addAttribute("customerDto", customerDto);

				return "page/login";
			} else {
				model.addAttribute("customerDto", customerDto);
				model.addAttribute("passErr", "Mật khẩu nhập lại không giống nhau");
				return "page/signup";
			}
		} catch (Exception e) {
			model.addAttribute("message", "Can not register because error server");
			e.printStackTrace();
		}
		return "page/signup";

	}

	@GetMapping("/do-logout")
	public String doLogout() {
		session.removeAttribute("acc");
		return "redirect:/";
	}
	
}
