package com.learn.springframework.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.learn.springframework.entities.Order;

public interface OrderRepository extends JpaRepository<Order, Long>{

}
