package com.learn.springframework.entities.dtos;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDto {
	private String codeOrder;
	private Date createOrder;
	private String address;
}
