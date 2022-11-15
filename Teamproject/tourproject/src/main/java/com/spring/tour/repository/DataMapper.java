package com.spring.tour.repository;

import java.util.List;

import com.spring.tour.vo.DataVO;

public interface DataMapper {
	
	/*
	 * 얘는 클래스가 아님. 인터페이스임.
	 * 얘는 매퍼 인터페이스인데, 얘의 역할은 연결된 쿼리문을 실행하기 위해 메소드를 작성하는 곳임.
	 * 메소드 본문은 쓸 필요가 없음. 어차피 마이바티스에서 알아서 쿼리문을 실행해줌.
	 * 마이바티스에서 특정 쿼리를 실행해주기 위해서, 자바 프로그램 상에서 어떤 메소드를 실행할지 나타내주기 위해 이 인터페이스가 필요한 것 뿐임.
	 * 어쨌든 스프링 프로젝트도 기본 뼈대는 자바 프로그램이니까.
	 * 아무튼 아래의 메소드는 레포지토리 클래스에서도 사용되고, mapper.xml 파일에서도 사용되니 각 파일 확인할 것.
	 * 매퍼(mapping, 연결)이름 그래도 자바 프로그램과 쿼리문을 연결하는 느낌.
	 */
	
	public DataVO selectOne(String location);
	public List<DataVO> selectList();
	public int insertOne(DataVO newData);

}
