package com.learn.springframework.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.learn.springframework.entities.Product;

public interface ProductService {

	void delete(Product entity);

	void deleteById(Long id);

	long count();

	boolean existsById(Long id);

	Optional<Product> findById(Long id);

	List<Product> findAll();


	Page<Product> findAll(Pageable pageable);

	List<Product> findAll(Sort sort);

	<S extends Product> List<S> saveAll(Iterable<S> entities);

	<S extends Product> S save(S entity);

}
