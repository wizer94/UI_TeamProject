package com.spring.tour.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.DataVO;

@Repository
public class DataRepository {

	@Autowired
	private SqlSession session;  // root-context.xml에서 정의해둔 객체. db 접속 정보와 마이바티스 설정들을 저장하고 있음.

	public DataVO selectOne(String location) {

		DataVO result = null; 		// 반환할 데이터를 선언하고 우선 null로 초기화.
		DataMapper mapper = null;   // 쿼리를 실행하기 위해, 쿼리와 연결된 메소드를 가지고 있는 인터페이스를 선언하고 우선 null로 초기화.

		try {
			mapper = session.getMapper(DataMapper.class);  // 우선 sqlSession 객체를 이용해서 인터페이스를 객체화.
			result = mapper.selectOne(location);  // 인터페이스 객체를 이용해서 메소드를 실행 => 연결된 쿼리문(mapper.xml 파일에 있음)이 알아서 자동 실행(설정이 잘 되어있다면 알아서 잘 실행됨).
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;  // 자바 객체로 변환(마이바티스가 알아서 해줌)된 쿼리 실행 결과를 반환.
	}

	public List<DataVO> selectList() {
		List<DataVO> result = null;
		DataMapper mapper = null;

		try {
			mapper = session.getMapper(DataMapper.class);
			result = mapper.selectList();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public int insertOne(DataVO newData) {
		int result = 0;
		DataMapper mapper = null;

		try {
			mapper = session.getMapper(DataMapper.class);
			result = mapper.insertOne(newData);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

}
