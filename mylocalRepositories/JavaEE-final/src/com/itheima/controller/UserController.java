package com.itheima.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Users;
import com.itheima.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.action",method=RequestMethod.POST)
	public String login(String id,String password,Model model,HttpSession session){
		Users usera = userService.findUser(id,password);
		if(usera != null){			
			StudentCustomer userb = userService.findStudentCustomer(id);
			if(userb != null){
				session.setAttribute("USER_SESSION", userb);
			}else{
				TeacherCustomer userc = userService.findTeacherCustomer(id);
				session.setAttribute("USER_SESSION", userc);
			}
			return "customer";
		}
		model.addAttribute("msg","’À∫≈ªÚ√‹¬Î¥ÌŒÛ£¨«Î÷ÿ–¬ ‰»Î£°");
		return "login";
	}
	
	@RequestMapping(value="/logout.action")
	public String logout(HttpSession session){
		session.invalidate();
		return "login";
	}
}
