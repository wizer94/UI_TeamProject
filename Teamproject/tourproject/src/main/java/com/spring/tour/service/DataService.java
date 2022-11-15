package com.spring.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.repository.DataRepository;
import com.spring.tour.vo.DataVO;

@Service
public class DataService {
	
	/*
	 * 서비스 클래스는 필수는 아님. 그래도 보통 사용하기를 권장함.
	 * 서비스 클래스의 역할은 비즈니스 로직을 수행함.
	 * 비즈니스 로직이 무엇이냐면 초간단히 말해서 데이터 전처리, 후처리를 말함.
	 * 혹시라도 데이터베이스에 데이터를 입력하기 전, 입력한 후에 뭔가 조작을 가해야 할 경우 쓰는 클래스임.
	 * 잘 모르겠으면 걍 따라서 써.
	 */

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
		// 마이바티스에서 insert, update, delete 쿼리를 실행하면 실행 결과 영향을 받은 행의 개수를 반환함.
		// 데이터 1개 입력 성공했으면 1, 입력 실패했으면 0,
		// 만약 update 쿼리 실행한다면, 2개의 레코드(행) 업데이트에 성공했으면 2를 리턴하는 식.
		// 근데 데이터베이스 입력 성공 여부는 true, false로 취급하는 게 아다리가 맞으니까
		// 아래와 같이 int값을 계산해서 boolean 값으로 변환해서 반환하는 거임.
		// 비즈니스 로직-데이터 후처리를 간접적으로 체험하라고 써봄 ㅇㅋ?
		return repository.insertOne(newData) > 0;
	}

}
