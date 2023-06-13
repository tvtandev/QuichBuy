package com.devmaster.Library.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devmaster.Library.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

}
