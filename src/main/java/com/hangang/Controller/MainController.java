package com.hangang.Controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hangang.Service.HangangService;
import com.hangang.Service.SendEmailService;

@Controller
public class MainController {
	
	@Autowired
	HangangService service;
	
	@Autowired
	SendEmailService emailservice;
	
	@RequestMapping("/")
	public ModelAndView test() throws IOException {
		double temp = service.getTemp();
		ModelAndView model = new ModelAndView();
		model.addObject("temp", temp);
		model.setViewName("main");
		return model;
	}
	
	@RequestMapping(value="/mail", method=RequestMethod.POST)
	@ResponseBody
	public void sendMail(String name, String message, String toEmail, String fromEmail) {
		emailservice.sendEmail(name, message, toEmail, fromEmail);
	}
}
