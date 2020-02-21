package com.theBest.ofPictures.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.theBest.ofPictures.service.TestService;

@Controller
public class TestController {
	
	@Resource(name="testService")
	private TestService testService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() throws Exception {
		int result = testService.home();
		System.out.println("처음으로 받아올 값은? "+result);
		return "register";
	}
}
