package com.learn.springframework.service.Impl;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import lombok.Data;

@Data
public class PageRequestImpl implements Pageable{
	
	private Integer limit;
	private Integer offset;
	private final Sort sort;
	
	public PageRequestImpl(Integer limit, Integer offset, Sort sort) {
		this.limit = limit;
		this.offset = offset;
		this.sort = sort; //Truyền cách sắp xếp riêng
	}
	
	public PageRequestImpl(Integer limit, Integer offset) {
		this(limit, offset, Sort.unsorted()); //Không sắp xếp
	}

	@Override
	public int getPageNumber() {
		return limit/offset; // lấy trang hiện tại
	}

	@Override
	public int getPageSize() {
		return limit;
	}

	@Override
	public long getOffset() {
		return offset;
	}

	@Override
	public Sort getSort() {
		return sort;
	}

	@Override
	public Pageable next() {
		// Trang tiếp theo
		return new PageRequestImpl(getPageSize(), (int) (getOffset() + getPageSize()));
	}
	
	public Pageable previuos() {
		// Trang trước
		return hasPrevious() ? new PageRequestImpl(getPageSize(), (int) (getOffset() + getPageSize())) : this;
	}

	@Override
	public Pageable previousOrFirst() {
		// Nếu trang hiện tại k lùi được nữa lấy trang đầu
		return hasPrevious() ? previuos() : first();
	}

	@Override
	public Pageable first() {
		// Trả về trang đầu tiên
		return new PageRequestImpl(getPageSize(), 0);
	}

	@Override
	public Pageable withPage(int pageNumber) {
		return new PageRequestImpl(getPageSize(), pageNumber * getPageSize());
	}

	@Override
	public boolean hasPrevious() {
		return offset > limit;
	}

}
