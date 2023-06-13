package com.devmaster.Customer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.devmaster.Library.dto.ShoppingCartItemDto;
import com.devmaster.Library.model.Customer;
import com.devmaster.Library.model.Image;
import com.devmaster.Library.model.Product;
import com.devmaster.Library.model.ProductColor;
import com.devmaster.Library.model.ProductSize;
import com.devmaster.Library.model.ShoppingCartItem;
import com.devmaster.Library.service.impl.ImageServiceImpl;
import com.devmaster.Library.service.impl.ProductColorServiceImpl;
import com.devmaster.Library.service.impl.ProductServiceImpl;
import com.devmaster.Library.service.impl.ProductSizeServiceImpl;
import com.devmaster.Library.service.impl.ShoppingCartItemServiceImpl;
import com.devmaster.Library.service.impl.ShoppingCartServiceImpl;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProductDetails {

	// repository product
	@Autowired
	private ProductServiceImpl productService;

	// repository productcolor
	@Autowired
	private ProductColorServiceImpl colorService;

	// reposiroty product size
	@Autowired
	private ProductSizeServiceImpl sizeService;
	
	@Autowired
	// reposiroty image product
	private ImageServiceImpl imageService;
	
	
	@Autowired
	private ShoppingCartServiceImpl shoppingCartService;
	
	

	@Autowired
	private ShoppingCartItemServiceImpl shoppingCartItemService;
	
	
	@Autowired
	private HttpSession session;

	@GetMapping("product-detail")
	public String productDetail(Model model, @RequestParam("product-id") int productID) {

		// Load Product By ProductID
		Product product = productService.findById(productID).get();
		model.addAttribute("product", product);

		// Load Color By ProductID
		List<ProductColor> productColors = colorService.findById(productID);
		model.addAttribute("productColors", productColors);

		// Load Size By ProductID
		List<ProductSize> productSizes = sizeService.findById(productID);
		model.addAttribute("productSizes", productSizes);

		// Load Image By ProductID
		List<Image> images = imageService.findById(productID);
		model.addAttribute("images", images);
		
		
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

		return "page/product-detail";
	}

}
