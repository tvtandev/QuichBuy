package com.devmaster.Library.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CustomerDto {

	
	@Size(min = 3, message = "Tên của bạn phải trên 3 ký tự")
	private String firstName;
	  
	@Size(min = 3, message = "Họ của bạn phải trên 3 ký tự")
	private String lastName;
	

	@Size(min = 5, message = "Tên đăng nhập phải trên 5 ký tự")
	private String userName;


	@Size(min = 5, message = "Mật khẩu phải trên 5 ký tự")
	private String password;

	private String image;

	@Size(min = 5, message = "Họ và tên phải trên 5 ký tự")
	private String customerName;

	@Email(message = "Địa chỉ email không hợp lệ")
	@NotBlank(message = "Vui lòng nhập địa chỉ email")
	private String email;

	@Pattern(regexp = "\\d{10}", message = "Số điện thoại không hợp lệ")
	private String phone;


	@Size(min = 10, message = "Địa chỉ phải trên 10 ký tự")
	private String address;

	private String confirmPassword;
	
}
