package com.devmaster.Library.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devmaster.Library.model.OrderStatus;

public interface OrderStatusRepository extends JpaRepository<OrderStatus, Integer> {

}
