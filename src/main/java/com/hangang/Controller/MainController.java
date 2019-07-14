package com.hangang.Controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hangang.Service.HangangService;

@Controller
public class MainController {
	
	@Autowired
	HangangService service;
	
	@RequestMapping("/")
	public ModelAndView test() throws IOException {
		double temp = service.getTemp();
		ModelAndView model = new ModelAndView();
		model.addObject("temp", temp);
		model.setViewName("main");
		return model;
	}
}
