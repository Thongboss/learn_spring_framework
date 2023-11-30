package com.learn.springframework.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.learn.springframework.entities.OrderDetails;

public interface OrderDetailsRepository extends JpaRepository<OrderDetails, Long>{

}
