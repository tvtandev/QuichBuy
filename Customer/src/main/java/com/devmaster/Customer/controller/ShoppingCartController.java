package com.devmaster.Customer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.devmaster.Library.model.Customer;
import com.devmaster.Library.model.ShoppingCartItem;
import com.devmaster.Library.service.impl.ShoppingCartItemServiceImpl;
import com.devmaster.Library.service.impl.ShoppingCartServiceImpl;

import jakarta.servlet.http.HttpSession;
import jakarta.websocket.server.PathParam;

@Controller
public class ShoppingCartController {

	@Autowired
	private ShoppingCartServiceImpl shoppingCartService;

	@Autowired
	private ShoppingCartItemServiceImpl shoppingCartItemService;

	
	@Autowired
	private HttpSession session;

	@GetMapping("cart")
	public String cart(Model model) {
		
		

		Customer customer = (Customer) session.getAttribute("acc");
		if (customer != null) {
			// load the number of products in the cart by CustomerID
			int numberOfProducts = shoppingCartService.numberOfProducts(customer.getCustomerID());
			model.addAttribute("numberOfProducts", numberOfProducts);
			
			
			// load the products by CustomerID
			List<ShoppingCartItem> shoppingCarts = shoppingCartItemService.findByCustomerID(customer.getCustomerID());
			model.addAttribute("shoppingCarts", shoppingCarts);

			
			
			System.out.println(shoppingCarts);
			double total = 0;

			for (int i = 0; i < shoppingCarts.size(); i++) {
				total = shoppingCarts.get(i).getQuantity() * shoppingCarts.get(i).getProduct().getPrice();
			}

			model.addAttribute("totals", total);

		}
		return "page/cart";

	}

	
	@PostMapping("add-to-cart")
	public String addToCart(@PathParam("color") String color, @PathParam("size") String size, @PathParam("quantity") int quantity, @RequestParam("product-id") int productID) {
		
		
		
		return "redirect:/cart";
	}

}
