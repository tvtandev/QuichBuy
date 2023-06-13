package com.devmaster.Library.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devmaster.Library.model.Product;
import com.devmaster.Library.model.ShoppingCartItem;
import com.devmaster.Library.repository.ShoppingCartItemRepository;
import com.devmaster.Library.service.ShoppingCartItemService;

@Service
public class ShoppingCartItemServiceImpl implements ShoppingCartItemService {

	@Autowired
	private ShoppingCartItemRepository shoppingCartItemRepository;

	@Override
	public List<ShoppingCartItem> findAll() {
		return (List<ShoppingCartItem>) shoppingCartItemRepository.findAll();
	}
	
	public List<ShoppingCartItem> findByCustomerID(int customerID) {
		return shoppingCartItemRepository.findByCustomerID(customerID);
	}

}
