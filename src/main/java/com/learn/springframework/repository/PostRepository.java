package com.learn.springframework.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.learn.springframework.entities.Post;

public interface PostRepository extends JpaRepository<Post, Long>{

}
