package com.xinxin.user.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xinxin.user.service.UserService;

@Controller
public class LoginAction {
	@Autowired
	private UserService userService ;
	
	@RequestMapping("tolist")
	public String tolist(){
		return "index";
	}
	
	@RequestMapping("tologin")
	public String tologin(){
		return "redirect:/login.jsp";
	}

}
