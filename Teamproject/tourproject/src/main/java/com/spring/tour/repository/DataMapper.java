package com.spring.tour.repository;

import java.util.List;

import com.spring.tour.vo.DataVO;

public interface DataMapper {
	
	/*
	 * 매퍼(mapping, 연결)- 자바 프로그램과 쿼리문을 연결.
	 */
	
	public DataVO selectOne(String location);
	public List<DataVO> selectList();
	public int insertOne(DataVO newData);

}
