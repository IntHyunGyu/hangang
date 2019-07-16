package com.hangang.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class SendEmailService {
	
	@Autowired
    public JavaMailSender emailSender;

	public void sendEmail(String name, String message, String toEmail, String fromEmail) {
		SimpleMailMessage msg = new SimpleMailMessage();
        msg.setFrom(fromEmail);
        msg.setTo(toEmail);
        msg.setSubject(message.length() >= 5 ? message.substring(5) : message);
        msg.setText(message);
        
        emailSender.send(msg);
	}

}
