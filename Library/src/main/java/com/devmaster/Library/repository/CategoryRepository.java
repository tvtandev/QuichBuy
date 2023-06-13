package com.devmaster.Library.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devmaster.Library.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
