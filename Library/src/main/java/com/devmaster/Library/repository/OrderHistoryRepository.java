package com.devmaster.Library.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devmaster.Library.model.OrderHistory;

public interface OrderHistoryRepository extends JpaRepository<OrderHistory, Integer> {

}
