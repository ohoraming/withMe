package com.storebro.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.storebro.web.entity.ExceptionError;

@RestControllerAdvice
public class ControllerAdvisor {

	@ExceptionHandler({NoHandlerFoundException.class})
	@ResponseStatus(HttpStatus.NOT_FOUND)
	// ResponseEntity<String> 이건 내가 직접 헤더, 바디 값 주고 페이지 넘길때(커스터마이징)
    public ModelAndView handleNoHandlerFoundException(NoHandlerFoundException ex) {
		ModelAndView mv = new ModelAndView("error.notFound");
		// 여기 모델 이름을 타일즈 매핑주소로 주는게 포인트
		ClassLoader classLoader = getClass().getClassLoader();
		// 클래스로더로 불러오면 리소스경로에서 찾아준다.
		File file = new File(classLoader.getResource("errorCode.json").getFile());
		ObjectMapper mapper = new ObjectMapper();
		ExceptionError e1 = null;
		try {
			List<ExceptionError> err = mapper.readValue(file, new TypeReference<List<ExceptionError>>() {});
			for(ExceptionError ee : err) {
				if(ee.getId().equals("404")) {
					e1 = ee;
				}
			}
			e1.setReason(ex.getMessage());
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		mv.addObject("exception",e1);
//		System.out.println(e1.getId());
		return mv;
    }
	
	@ExceptionHandler({NullPointerException.class})
	@ResponseStatus(HttpStatus.FORBIDDEN) // 500 = INTERNAL_SERVER_ERROR
	// ResponseEntity<String> 이건 내가 직접 헤더, 바디 값 주고 페이지 넘길때(커스터마이징)
    public ModelAndView handleNestedServletException(NullPointerException ex) {
		ModelAndView mv = new ModelAndView("error.notFound");
		// 여기 모델 이름을 타일즈 매핑주소로 주는게 포인트
		ClassLoader classLoader = getClass().getClassLoader();
		// 클래스로더로 불러오면 리소스경로에서 찾아준다.
		File file = new File(classLoader.getResource("errorCode.json").getFile());
		ObjectMapper mapper = new ObjectMapper();
		ExceptionError e1 = null;
		try {
			List<ExceptionError> err = mapper.readValue(file, new TypeReference<List<ExceptionError>>() {});
			for(ExceptionError ee : err) {
				if(ee.getId().equals("403")) {
					e1 = ee;
				}
			}
			e1.setReason(ex.getMessage());
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		mv.addObject("exception",e1);
//		System.out.println(e1.getId());
		return mv;
	}
	
}
