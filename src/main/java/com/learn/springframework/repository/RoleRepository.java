package com.learn.springframework.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.learn.springframework.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
	Role findByRoleName(String roleName);
}
