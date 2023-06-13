package com.devmaster.Library.service;

import java.util.List;

import com.devmaster.Library.model.ShoppingCart;

public interface ShoppingCartService {
	List<ShoppingCart> findById(int customerID);
}
