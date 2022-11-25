package com.spring.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.repository.DataRepository;
import com.spring.tour.vo.DataVO;

@Service
public class DataService {

	@Autowired
	private DataRepository repository;

	// 데이터 1개 가져오기.
	public DataVO selectOne(String location) {
		return repository.selectOne(location);
	}

	// 데이터 여러 개 가져오기.
	public List<DataVO> selectList() {
		return repository.selectList();
	}

	// 데이터 1개 입력하기.
	public boolean insertOne(DataVO newData) {
		return repository.insertOne(newData) > 0;
	}

}
