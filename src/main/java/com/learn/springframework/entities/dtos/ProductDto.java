package com.learn.springframework.entities.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDto {
	private Long productId;
	private String productName;
	private String createDate;
	private String images;
	private String describe;
	private Long quantity;
	private double price;
	private Long categoryId;
}
