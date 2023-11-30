package com.learn.springframework.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.learn.springframework.entities.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
