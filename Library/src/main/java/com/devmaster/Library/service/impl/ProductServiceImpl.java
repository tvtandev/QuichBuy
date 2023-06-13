package com.devmaster.Library.service.impl;

import java.util.Collection;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devmaster.Library.model.Product;
import com.devmaster.Library.repository.ProductRepository;
import com.devmaster.Library.service.ProductService;


@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;
	


	@Override
	public Collection<Product> findAllProduct() {
		return productRepository.findAll();
	}



	@Override
	public Optional<Product> findById(int id) {
		return productRepository.findById(id);
	}

}
