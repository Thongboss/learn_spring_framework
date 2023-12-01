package com.learn.springframework.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Sort;

import com.learn.springframework.entities.Role;

public interface RoleService {

	void delete(Role entity);

	void deleteById(Long id);

	Optional<Role> findById(Long id);

	List<Role> findAll();

	List<Role> findAll(Sort sort);

	<S extends Role> S save(S entity);

	Role findByRoleName(String roleName);

}
