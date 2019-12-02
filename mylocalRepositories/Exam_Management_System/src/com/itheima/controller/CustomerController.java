package com.itheima.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itheima.common.utils.Page;
import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Lesson;
import com.itheima.service.UserService;

@Controller
public class CustomerController {
	@Autowired
	private UserService userService;

	@RequestMapping(value="/student-register.action")
	public String studentregister(){
		return "student-register";
	}
	
	@RequestMapping(value="/student-result.action")
	public String studentresult(){
		System.out.println("a");
		return "student-result";
	}
	
	@RequestMapping(value="/student-information.action")
	public String studentinformation(){
		return "student-information";
	}
	
	@RequestMapping(value="/teacher-registe.action")
	public String teacherregiste(){
		return "teacher-registe";
	}
	
	@RequestMapping(value="/teacher-manage.action")
	public String teachermanage(){
		return "teacher-manage";
	}
	
	@RequestMapping(value="/teacher-information.action")
	public String teacherinformation(){
		return "teacher-information";
	}
}
