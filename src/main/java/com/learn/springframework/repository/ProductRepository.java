package com.learn.springframework.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.learn.springframework.entities.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

}
