package com.learn.springframework.entities;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "LN_users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userId;
	private String userName;
	private String password;
	private String photo;
	private String email;
	private String phone;
	private String dateCreate;
	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private List<UserRole> listRole;
	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private List<Post> listPost;
	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private List<Order> listOrder;
}
