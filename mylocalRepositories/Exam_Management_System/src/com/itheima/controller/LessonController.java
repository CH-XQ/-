package com.itheima.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itheima.common.utils.Page;
import com.itheima.dao.UserDao;
import com.itheima.po.Lesson;
import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Test;
import com.itheima.service.UserService;
@Controller
public class LessonController {
	@Autowired
	private UserService userService;
	private UserDao userDao;
	
	@RequestMapping(value="/chosetest.action")
	public String choselession(@RequestParam(defaultValue="1")Integer page,@RequestParam(defaultValue="10")Integer rows,Model model,HttpSession session){
		Page<Test> tests = userService.findpublictest(page,rows);
		model.addAttribute("page",tests);
		model.addAttribute("msg", "a");
		return "student-register";
	}
	
	@RequestMapping(value="/createtest.action", method = RequestMethod.POST)
	public void createlession(String name,Date date,String classroom,Model model,HttpSession session){
		TeacherCustomer teacher = (TeacherCustomer) session.getAttribute("USER_SESSION");
		Test newtest = new Test();
		newtest.setName(name);
		newtest.setTeacher(teacher.getName());
		newtest.setClassroom(classroom);
		newtest.setTime(date);
		newtest.setIspublic(0);
		this.userDao.createtest(newtest);
		System.out.println(teacher.getName()+name);
		//return "teacher-create";
	}
}
