package com.learn.springframework.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.learn.springframework.entities.Category;

public interface CategoryRepository extends JpaRepository<Category, Long>{

}
