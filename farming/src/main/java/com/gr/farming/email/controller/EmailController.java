package com.gr.farming.email.controller;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmailController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	private static final Logger logger
	=LoggerFactory.getLogger(EmailController.class);
	
	@RequestMapping(value="/member/certified", method = RequestMethod.GET)
	public String emailPage(@RequestParam String email, Model model) {
		logger.info("이메일 인증요청 email : {}",email);
		
		String setfrom = "farming@gr.com";
		Random random = new Random();
		
		int result = random.nextInt(999999)+100000;
		try {
			MimeMessage msg = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(msg, true, "utf-8");
			
			messageHelper.setSubject(email+"님이 요청하신 이메일 인증번호 입니다.");
			messageHelper.setText("인증번호 : "+result);
			messageHelper.setTo(email);
			messageHelper.setFrom(setfrom);
			msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email));
			mailSender.send(msg);
			logger.info("이메일 전송 email : {}",email);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		logger.info("인증코드 : {}",result);
		model.addAttribute("result", result);
		
		return "member/certified";
		
	}
	
}
