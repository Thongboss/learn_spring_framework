package com.learn.springframework.service.Impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.learn.springframework.entities.Role;
import com.learn.springframework.repository.RoleRepository;
import com.learn.springframework.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{
	@Autowired
	private RoleRepository roleRepository;

	@Override
	public <S extends Role> S save(S entity) {
		return roleRepository.save(entity);
	}

	@Override
	public List<Role> findAll(Sort sort) {
		return roleRepository.findAll(sort);
	}

	@Override
	public List<Role> findAll() {
		return roleRepository.findAll();
	}

	@Override
	public Optional<Role> findById(Long id) {
		return roleRepository.findById(id);
	}

	@Override
	public void deleteById(Long id) {
		roleRepository.deleteById(id);
	}

	@Override
	public void delete(Role entity) {
		roleRepository.delete(entity);
	}
	
	@Override
	public Role findByRoleName(String roleName) {
		return roleRepository.findByRoleName(roleName);
	}
}
