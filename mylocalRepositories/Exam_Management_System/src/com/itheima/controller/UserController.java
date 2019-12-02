package com.itheima.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itheima.po.OfficeCustomer;
import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Users;
import com.itheima.po.admin;
import com.itheima.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(String id, String password, Model model, HttpSession session) {
		Users usera = userService.findUser(id, password);
		if (usera != null) {
			if (usera.level == 4) {
				StudentCustomer userb = userService.findStudentCustomer(id);
				session.setAttribute("USER_SESSION", userb);
				return "student-register";
			}
			else if (usera.level == 3) {
				TeacherCustomer userb = userService.findTeacherCustomer(id);
				session.setAttribute("USER_SESSION", userb);
				return "teacher-create";
			}

			else if (usera.level == 2) {
				OfficeCustomer userb = userService.findOfficeCustomer(id);
				session.setAttribute("USER_SESSION", userb);
				return "office-manage";
			}
			
			else{
				admin userb = userService.findadminCustomer(id);
				session.setAttribute("USER_SESSION", userb);
				return "admin-teacher";
			}
		}
		else{
			model.addAttribute("msg", "’À∫≈ªÚ√‹¬Î¥ÌŒÛ£¨«Î÷ÿ–¬ ‰»Î£°");
			return "login";
		}
	}

	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
}
