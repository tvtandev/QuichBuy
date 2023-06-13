package com.devmaster.Customer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.devmaster.Library.model.Category;
import com.devmaster.Library.model.Customer;
import com.devmaster.Library.model.Product;
import com.devmaster.Library.model.ShoppingCartItem;
import com.devmaster.Library.service.impl.CategoryServiceImpl;
import com.devmaster.Library.service.impl.ImageServiceImpl;
import com.devmaster.Library.service.impl.ProductColorServiceImpl;
import com.devmaster.Library.service.impl.ProductServiceImpl;
import com.devmaster.Library.service.impl.ProductSizeServiceImpl;
import com.devmaster.Library.service.impl.ShoppingCartItemServiceImpl;
import com.devmaster.Library.service.impl.ShoppingCartServiceImpl;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	// repository product
	@Autowired
	private ProductServiceImpl productService;

	// repository category
	@Autowired
	private CategoryServiceImpl categoryService;


	@Autowired
	private ShoppingCartServiceImpl shoppingCartService;

	@Autowired
	private ShoppingCartItemServiceImpl shoppingCartItemService;

	@Autowired
	private HttpSession session;

	@GetMapping("/")
	public String home(Model model) {
		List<Product> product = (List<Product>) productService.findAllProduct();
		model.addAttribute("products", product);
		List<Category> categorys = (List<Category>) categoryService.findAllCategory();
		model.addAttribute("categorys", categorys);

		Customer customer = (Customer) session.getAttribute("acc");
		if (customer != null) {
			// load the number of products in the cart by CustomerID
			int numberOfProducts = shoppingCartService.numberOfProducts(customer.getCustomerID());
			model.addAttribute("numberOfProducts", numberOfProducts);
			// load the products by CustomerID
			List<ShoppingCartItem> shoppingCarts = shoppingCartItemService.findByCustomerID(customer.getCustomerID());
			model.addAttribute("shoppingCarts", shoppingCarts);
			double total = 0;
			
			for (int i = 0; i < shoppingCarts.size(); i++) {
				total = shoppingCarts.get(i).getQuantity() * shoppingCarts.get(i).getProduct().getPrice();
			}
			
			model.addAttribute("totals", total);
			
			
		}

		return "index";
	}

	@GetMapping("shop-side-version-2")
	public String shopSideversion() {
		return "page/shop-side-version-2";
	}

	
	@GetMapping("lost-password")
	public String lostPassword() {
		return "page/lost-password";
	}

	@GetMapping("checkout")
	public String checkout() {
		return "page/checkout";
	}

	@GetMapping("dashboard")
	public String dashboard() {
		return "page/dashboard";
	}

	@GetMapping("dash-edit-profile")
	public String dashEditProfile() {
		return "page/dash-edit-profile";
	}

	@GetMapping("dash-address-book")
	public String dashAddressBook() {
		return "page/dash-address-book";
	}

	@GetMapping("dash-address-make-default")
	public String dashAddressMakeDefault() {
		return "page/dash-address-make-default";
	}

	@GetMapping("dash-address-add")
	public String dashAddressAdd() {
		return "page/dash-address-add";
	}

	@GetMapping("dash-address-edit")
	public String dashAddressEdit() {
		return "page/dash-address-edit";
	}

	@GetMapping("dash-track-order")
	public String dashTrackOrder() {
		return "page/dash-track-order";
	}

	@GetMapping("dash-my-profile")
	public String dashMyProfile() {
		return "page/dash-my-profile";
	}

	@GetMapping("dash-manage-order")
	public String dashManageOrder() {
		return "page/dash-manage-order";
	}

}
