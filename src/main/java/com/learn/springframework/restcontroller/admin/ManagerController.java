package com.learn.springframework.restcontroller.admin;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.learn.springframework.entities.Role;
import com.learn.springframework.entities.dtos.RoleDto;
import com.learn.springframework.service.RoleService;

@RestController
@RequestMapping("/admin/manager")
public class ManagerController {
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private ModelMapper modelMapper;

	@GetMapping
	public List<RoleDto> getAllRole(){
		List<RoleDto> list = new ArrayList<>();
		List<Role> listr = roleService.findAll();
		listr.forEach(e->{
			RoleDto role = modelMapper.map(e, RoleDto.class);
			list.add(role);
		});
		return list;
	}
	
	@PostMapping
	public RoleDto addRole(@RequestBody RoleDto dto) {
		Role role = modelMapper.map(dto, Role.class);
		roleService.save(role);
		return dto;
	}
	
	@DeleteMapping
	public void deleteRole(@RequestBody RoleDto dto) {
		Role role = roleService.findByRoleName(dto.getRoleName());
		roleService.delete(role);
	}
	
}
