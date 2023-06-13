package com.devmaster.Library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.devmaster.Library.model.ShoppingCartItem;


@Repository
public interface ShoppingCartItemRepository extends JpaRepository<ShoppingCartItem, Integer> {

	List<ShoppingCartItem> findAll();
	
	@Query("SELECT i FROM ShoppingCartItem i WHERE i.shoppingCart.customer.customerID = ?1")
	List<ShoppingCartItem> findByCustomerID(int CustomerID);
	
}
