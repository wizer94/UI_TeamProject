package com.spring.tour.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.DataVO;

@Repository
public class DataRepository {
	
	/*
	 * 레포지토리 클래스도 필수는 아님. 서비스 클래스와 마찬가지로 사용을 권장함.
	 * 레포지토리 클래스의 역할은 스프링 프로젝트(자바 프로그램)와 db 연동 기능을 동작시킬 때,
	 * 자바 프로그램의 최말단 부분으로써 실행할 쿼리와 연결된 자바 메소드를 실행시키는 역할임.
	 * 그러니까 니가 스프링 프로젝트 톰캣에 탑재해서 가동해서 db 연동 기능을 호출했을 때,
	 * 여기까지가 자바 프로그램 실행되는 가장 마지막 부분이고 이 다음은 db의 영역으로 넘어간다는 거임.
	 * 좀 어려운 얘기일 수도 있는데 지금 모르겠으면 일단 패스하고 따라해.
	 */

	@Autowired
	private SqlSession session;  // 얘는 root-context.xml에서 정의해둔 객체임. db 접속 정보와 마이바티스 설정들을 저장하고 있음.

	public DataVO selectOne(String location) {
		// 이 메소드 본문은 공식처럼 암기해도 좋음. 아래의 다른 메소드 보면 알겠지만 형태가 거의 유사하고 패턴이 계속 반복되기 때문.

		DataVO result = null; // 반환할 데이터를 선언하고 우선 null로 초기화.
		DataMapper mapper = null;  // 쿼리를 실행하기 위해, 쿼리와 연결된 메소드를 가지고 있는 인터페이스를 선언하고 우선 null로 초기화.

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
