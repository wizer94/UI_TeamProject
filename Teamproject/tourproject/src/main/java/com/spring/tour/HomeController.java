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

	// value <- 이 값을 href에 넣어야 페이지 이동 가능.
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(String location, Model model) {	
		logger.info("메인 페이지 실행");	// 아래 콘솔창에 표기
		
		return "main";	// 파일명.jsp 에서 파일명을 표기.
	}
	
	@RequestMapping(value = "/home1", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {	
		logger.info("홈 페이지1 실행");
		
		DataVO result0 = service.selectOne("경복궁");
		DataVO result1 = service.selectOne("창덕궁");
		DataVO result2 = service.selectOne("북촌한옥마을");
		DataVO result3 = service.selectOne("청계천");
		DataVO result4 = service.selectOne("낙산공원");
		DataVO result5 = service.selectOne("롯데월드타워");
		
		model.addAttribute("result0",result0);
		model.addAttribute("result1",result1);
		model.addAttribute("result2",result2);
		model.addAttribute("result3",result3);
		model.addAttribute("result4",result4);
		model.addAttribute("result5",result5);
		
		return "home1";
	}
	
	@RequestMapping(value = "/home2", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {	
		logger.info("홈 페이지2 실행");	// 아래 콘솔창에 표기
		
		DataVO result6 = service.selectOne("올림픽공원");
		DataVO result7 = service.selectOne("세빛섬");
		DataVO result8 = service.selectOne("서울숲");
		DataVO result9 = service.selectOne("국립중앙박물관");
		DataVO result10 = service.selectOne("남산서울타워");
		DataVO result11 = service.selectOne("여의도 한강공원");
		
		model.addAttribute("result6",result6);
		model.addAttribute("result7",result7);
		model.addAttribute("result8",result8);
		model.addAttribute("result9",result9);
		model.addAttribute("result10",result10);
		model.addAttribute("result11",result11);
		
		return "home2";
	}
	@RequestMapping(value = "/home3", method = RequestMethod.GET)
	public String home3(Locale locale, Model model) {	
		logger.info("홈 페이지3 실행");	// 아래 콘솔창에 표기
		
		DataVO result12 = service.selectOne("63빌딩");
		DataVO result13 = service.selectOne("동대문디자인플라자");
		DataVO result14 = service.selectOne("명동");
		DataVO result15 = service.selectOne("덕수궁");
		
		model.addAttribute("result12",result12);
		model.addAttribute("result13",result13);
		model.addAttribute("result14",result14);
		model.addAttribute("result15",result15);
		
		return "home3";
	}
	
	// value <- 이 값을 href에 넣어야 페이지 이동 가능.
	@RequestMapping(value = "/info00", method = RequestMethod.GET)
	public String info(Model model) {
		logger.info("인포00 페이지 실행");	
		
		DataVO result0 = service.selectOne("경복궁");
		model.addAttribute("result0",result0);
		
		return "info00";	// 파일명.jsp 에서 파일명을 표기.
	}
	
	@RequestMapping(value = "/info01", method = RequestMethod.GET)
	public String info01(Model model) {
		logger.info("인포01 페이지 실행");
		
		DataVO result1 = service.selectOne("창덕궁");
		model.addAttribute("result1",result1);
		
		return "info01";
	}
	
	
	@RequestMapping(value = "/info02", method = RequestMethod.GET)
	public String info02(Model model) {
		logger.info("인포02 페이지 실행");	
		
		DataVO result2 = service.selectOne("북촌한옥마을");
		model.addAttribute("result2",result2);
		
		return "info02";	
	}
	
	@RequestMapping(value = "/info03", method = RequestMethod.GET)
	public String info03(Model model) {
		logger.info("인포03 페이지 실행");	
		
		DataVO result3 = service.selectOne("청계천");
		model.addAttribute("result3",result3);
		
		return "info03";	
	}
	
	@RequestMapping(value = "/info04", method = RequestMethod.GET)
	public String info04(Model model) {
		logger.info("인포04 페이지 실행");	
		
		DataVO result4 = service.selectOne("낙산공원");
		model.addAttribute("result4",result4);
		
		return "info04";	
	}
	
	@RequestMapping(value = "/info05", method = RequestMethod.GET)
	public String info05(Model model) {
		logger.info("인포05 페이지 실행");	
		
		DataVO result5 = service.selectOne("롯데월드타워");
		model.addAttribute("result5",result5);
		
		return "info05";	
	}
	
	@RequestMapping(value = "/info06", method = RequestMethod.GET)
	public String info06(Model model) {
		logger.info("인포06 페이지 실행");	
		
		DataVO result6 = service.selectOne("올림픽공원");
		model.addAttribute("result6",result6);
		
		return "info06";	
	}
	
	@RequestMapping(value = "/info07", method = RequestMethod.GET)
	public String info07(Model model) {
		logger.info("인포07 페이지 실행");	
		
		DataVO result7 = service.selectOne("세빛섬");
		model.addAttribute("result7",result7);
		
		return "info07";	
	}
	
	@RequestMapping(value = "/info08", method = RequestMethod.GET)
	public String info08(Model model) {
		logger.info("인포08 페이지 실행");	
		
		DataVO result8 = service.selectOne("서울숲");
		model.addAttribute("result8",result8);
		
		return "info08";	
	}
	
	@RequestMapping(value = "/info09", method = RequestMethod.GET)
	public String info09(Model model) {
		logger.info("인포09 페이지 실행");	
		
		DataVO result9 = service.selectOne("국립중앙박물관");
		model.addAttribute("result9",result9);
		
		return "info09";	
	}
	
	@RequestMapping(value = "/info10", method = RequestMethod.GET)
	public String info10(Model model) {
		logger.info("인포10 페이지 실행");	
		
		DataVO result10 = service.selectOne("남산서울타워");
		model.addAttribute("result10",result10);
		
		return "info10";	
	}
	
	@RequestMapping(value = "/info11", method = RequestMethod.GET)
	public String info11(Model model) {
		logger.info("인포11 페이지 실행");	
		
		DataVO result11 = service.selectOne("여의도 한강공원");
		model.addAttribute("result11",result11);
		
		return "info11";	
	}
	
	@RequestMapping(value = "/info12", method = RequestMethod.GET)
	public String info12(Model model) {
		logger.info("인포12 페이지 실행");	
		
		DataVO result12 = service.selectOne("63빌딩");
		model.addAttribute("result12",result12);
		
		return "info12";	
	}
	
	@RequestMapping(value = "/info13", method = RequestMethod.GET)
	public String info13(Model model) {
		logger.info("인포13 페이지 실행");	
		
		DataVO result13 = service.selectOne("동대문디자인플라자");
		model.addAttribute("result13",result13);
		
		return "info13";	
	}
	
	@RequestMapping(value = "/info14", method = RequestMethod.GET)
	public String info14(Model model) {
		logger.info("인포14 페이지 실행");	
		
		DataVO result14 = service.selectOne("명동");
		model.addAttribute("result14",result14);
		
		return "info14";	
	}
	
	@RequestMapping(value = "/info15", method = RequestMethod.GET)
	public String info15(Model model) {
		logger.info("인포15 페이지 실행");	
		
		DataVO result15 = service.selectOne("덕수궁");
		model.addAttribute("result15",result15);
		
		
		return "info15";	
	}
}
