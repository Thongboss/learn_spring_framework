package com.learn.springframework.restcontroller;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.learn.springframework.entities.Product;
import com.learn.springframework.entities.dtos.ProductDto;
import com.learn.springframework.service.CategoryService;
import com.learn.springframework.service.ProductService;
import com.learn.springframework.service.Impl.PageRequestImpl;

@RestController
@RequestMapping("/products")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ModelMapper modelMapper;
	
	@Autowired
	private CategoryService categoryService;
	
//	@Autowired
//	private PageRequestImpl pageRequest;
	
	@PostMapping
	public ProductDto addProduct(@RequestBody ProductDto dto) {
		if(dto != null) {
			Product pro = modelMapper.map(dto, Product.class);
			pro.setCategory(categoryService.findById(dto.getCategoryId()).get());
			productService.save(pro);
			return dto;
		}
		return null;
	}
	
	@GetMapping
	public List<ProductDto> getAllProduct(){
		List<ProductDto> listDto = new ArrayList<>();
		List<Product> list = productService.findAll();
		list.forEach(e -> {
			ProductDto dto = modelMapper.map(e, ProductDto.class);
			dto.setCategoryId(e.getCategory().getCategoryId());
			listDto.add(dto);
		});
		return listDto;
	}
	
	@GetMapping("/{productId}")
	public Product getOneProduct(@PathVariable Long productId) {
		Product pro = productService.findById(productId).get();
		if(pro == null) {
			return null;
		}
//		ProductDto dto = modelMapper.map(pro, ProductDto.class);
//		dto.setCategoryId(pro.getCategory().getCategoryId());
		return pro;
	}
	
	@PostMapping("/list")
	public List<ProductDto> addListProduct(@RequestBody List<ProductDto> ListDto){
		if(ListDto == null) {
			return null;
		}
//		Product pro = new Product();
		ListDto.forEach(e -> {
			Product pro = modelMapper.map(e, Product.class);
			pro.setCategory(categoryService.findById(e.getCategoryId()).get());
			productService.save(pro);
		});
		return ListDto;
	}
	
	@PutMapping
	public ProductDto updateProduct(@RequestBody ProductDto dto) {
		if(dto.getProductId() == null || dto == null) {
			return null;
		}
		Product pro = productService.findById(dto.getProductId()).get();
		if(pro != null) {
			pro = modelMapper.map(dto, Product.class);
			pro.setCategory(categoryService.findById(dto.getCategoryId()).get());
			productService.save(pro);
		}
		return dto;
	}
	
	@GetMapping("/page") // hướng giải quyết này có vẻ chưa tối ưu khi chưa thể lấy ra giá trị đầu tiên trong DB
	public Page<Product> getPageProduct(){
		Pageable page = new PageRequestImpl(10, 1);
		Page<Product> pageProduct = productService.findAll(page);
		return pageProduct;
	}
	
	@GetMapping("/page1")
	public List<ProductDto> getPageProduct1(){
		Page<Product> pageProduct = productService.findAll(PageRequest.of(0, 5));
		List<Product> lisP = pageProduct.getContent();
		List<ProductDto> list = new ArrayList<>();
		lisP.forEach(e -> {
			ProductDto dto = modelMapper.map(e, ProductDto.class);
			list.add(dto);
		});
		return list;
	}
	
}
