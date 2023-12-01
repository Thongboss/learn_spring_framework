package com.learn.springframework.entities.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
	private Long userId;
	private String userName;
	private String password;
	private String photo;
	private String email;
	private String phone;
	private String dateCreate;
}
