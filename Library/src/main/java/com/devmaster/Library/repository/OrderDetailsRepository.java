package com.devmaster.Library.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devmaster.Library.model.OrderDetails;

public interface OrderDetailsRepository extends JpaRepository<OrderDetails, Integer> {

}
