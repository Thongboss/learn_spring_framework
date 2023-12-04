package com.learn.springframework.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.learn.springframework.entities.Category;
import com.learn.springframework.service.CategoryService;

@RestController
@RequestMapping("/categories")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@PostMapping
	public Category addCategory(@RequestBody Category cate) {
		if(cate == null) {
			return null;
		}
		categoryService.save(cate);
		return cate;
	}
	
	@GetMapping
	public List<Category> getAllCategory(){
		List<Category> list = categoryService.findAll();
		return list;
	}
}
