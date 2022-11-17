package com.spring.tour;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.tour.service.DataService;
import com.spring.tour.vo.DataVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private DataService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(String location, Model model) {	
		logger.info("메인 홈 페이지 실행");	// 아래 콘솔창에 표기
		
		// DB에서 가져오기
		logger.info("selectOne 메소드 실행(GET).");
		DataVO result = service.selectOne("국립중앙박물관");// 데이터베이스에서 데이터 1개 가져오기 시도.
		logger.info("데이터베이스에서 가져온 데이터: {}", result);  // 결과 확인용 출력.
		model.addAttribute("result", result);
		
		return "main";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String selectOne(String location, Model model) {
		logger.info("selectOne 메소드 실행(POST).");
		logger.info("전달받은 데이터: {}", location);
		DataVO result = service.selectOne("국립중앙박물관");// 데이터베이스에서 데이터 1개 가져오기 시도.
//		DataVO result2 = service.selectOne(2);
//		DataVO result3 = service.selectOne(3);
		logger.info("데이터베이스에서 가져온 데이터: {}", result);  // 결과 확인용 출력.
		model.addAttribute("result", result);
//		model.addAttribute("result2", result2);
//		model.addAttribute("result3", result3);
		return "main";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {	
		logger.info("메인 홈 페이지 실행");	// 아래 콘솔창에 표기
		
		return "home";
	}
	
	// value <- 이 값을 href에 넣어야 페이지 이동 가능.
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String info(Model model) {
		logger.info("인포 페이지 실행");
		
		
		return "info";	// 파일명.jsp 에서 파일명을 표기.
	}
	
	@RequestMapping(value = "/info01", method = RequestMethod.GET)
	public String info01(Model model) {
		logger.info("인포01 페이지 실행");
		
		
		return "info01";	// 파일명.jsp 에서 파일명을 표기.
	}
}
