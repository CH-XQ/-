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
	
	@RequestMapping(value="/adduser.action")
	public String adduser(String username,String id,String password,Integer user_level,Integer is_enable){
		userService.addUser(username,id,password,user_level,is_enable);
		return "customer";
	}
	
	@RequestMapping(value="/showlesson.action")
	public String choselession(@RequestParam(defaultValue="1")Integer page,@RequestParam(defaultValue="10")Integer rows,Model model,HttpSession session){
		Page<Lesson> lessons = userService.findalllessons(page,rows);
		model.addAttribute("page",lessons);
		return "choselesson";
	}
	
	@RequestMapping(value="/choselesson.action",method = RequestMethod.POST)
	public String watchlession(String lesson_id,Model model,HttpSession session){
		Lesson lesson = new Lesson();
		lesson = userService.showlesson(lesson_id);
		session.setAttribute("LESSON",lesson);
		return "watchlesson";
	}
	
	@RequestMapping(value="/confirmchoselesson.action",method = RequestMethod.POST)
	public String confirmlession(String lesson_id,Model model,HttpSession session){
			StudentCustomer customer = (StudentCustomer) session.getAttribute("USER_SESSION");
			Lesson lesson = (Lesson) session.getAttribute("LESSON");
			userService.choselesson(customer.student_id,lesson_id);
			customer = userService.findStudentCustomer(customer.student_id);
			session.removeAttribute("USER_SESSION");
			session.setAttribute("USER_SESSION", customer);
			return "customer";
		
	}
	
	@RequestMapping(value="/uploadlesson.action")
	public String uploadlession(HttpSession session){
		StudentCustomer customer = (StudentCustomer) session.getAttribute("USER_SESSION");
		Lesson lesson = userService.showlesson(customer.getLesson_id());
		session.setAttribute("LESSON",lesson);
		return "uploadlesson";
	}
		
	@RequestMapping(value="/confirmuploadlesson.action")
	public String uploadlession(@RequestParam("uploadfile") List<MultipartFile> uploadfile, HttpServletRequest request,Model model,HttpSession session) {
		if (!uploadfile.isEmpty() && uploadfile.size() > 0) {
			for (MultipartFile file : uploadfile) {
				String originalFilename = file.getOriginalFilename();
				String dirPath = request.getServletContext().getRealPath("/upload/");
				File filePath = new File(dirPath);
				if (!filePath.exists()) {
					filePath.mkdir();
				}
				UUID newFilename = UUID.randomUUID() ;
				try {
					StudentCustomer customer = (StudentCustomer) session.getAttribute("USER_SESSION");
					String a =newFilename + "_" + customer.getStudent_id() + "_" + originalFilename;
					userService.changedesign_files(customer.getStudent_id(),a);
					file.transferTo(new File(dirPath + "\\" + a));
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("msg","上传失败");
					return "uploadlesson";
				}
			}
			model.addAttribute("msg","上传完成");
			return "customer";
		} else {
			model.addAttribute("msg","上传失败");
			return "uploadlesson";
		}
	}
	
	@RequestMapping(value="/createlesson")
	public String createlession(HttpSession session){
		return "createlesson";
	}
	

	
	@RequestMapping(value="/createlesson.action")
	public String createlession(Model model,HttpSession session){
		return "createlesson";
	}
	
	@RequestMapping(value="/confirmlesson.action",method = RequestMethod.POST)
	public String confirmlesson(String lesson_id,String lesson_name,Integer students_max_number,Integer students_number,int lesson_properties,Integer lesson_objective,String lesson_details,Integer is_insocial,Model model,HttpSession session){
		TeacherCustomer customer = (TeacherCustomer) session.getAttribute("USER_SESSION");
		Lesson newlesson = new Lesson();
		newlesson.setLesson_id(lesson_id);
		newlesson.setIs_insocial(is_insocial);
		newlesson.setLesson_details(lesson_details);
		newlesson.setLesson_name(lesson_name);
		newlesson.setLesson_objective(lesson_objective);
		newlesson.setLesson_properties(lesson_properties);
		newlesson.setStudents_max_number(students_max_number);
		newlesson.setStudents_number(students_number);
		newlesson.setTeacher_id(customer.getTeacher_id());
		userService.createlesson(newlesson);
		return "customer";
	}
	
	@RequestMapping(value="/addstudent.action")
	public String addstudent(String student_id,@RequestParam(defaultValue="1")Integer page,@RequestParam(defaultValue="10")Integer rows,Model model,HttpSession session){
		TeacherCustomer customera = (TeacherCustomer) session.getAttribute("USER_SESSION");
		Page<StudentCustomer> lessons = userService.findallStudentwork(page,rows,customera.getLesson_id());
		model.addAttribute("page",lessons);
		TeacherCustomer customerb = (TeacherCustomer) session.getAttribute("USER_SESSION");
		userService.addstudent(student_id,customerb.getLesson_id());
		return "downloadlesson";
	}
	
	@RequestMapping(value="/checklesson.action")
	public String checklession(@RequestParam(defaultValue="1")Integer page,@RequestParam(defaultValue="10")Integer rows,Model model,HttpSession session){
		TeacherCustomer customer = (TeacherCustomer) session.getAttribute("USER_SESSION");
		Page<StudentCustomer> lessons = userService.findallStudentwork(page,rows,customer.getLesson_id());
		model.addAttribute("page",lessons);
		return "downloadlesson";
	}
	

	
	@RequestMapping(value="/download.action",method = RequestMethod.POST)
	public ResponseEntity<byte[]> fileDownload(HttpServletRequest request, String student_id,HttpSession session) throws Exception {
		StudentCustomer customer = new StudentCustomer();
		customer.setStudent_id(student_id);
		String path = request.getServletContext().getRealPath("/upload/");
		File file = new File(path + File.separator + userService.getfile(customer.student_id));
		HttpHeaders headers = new HttpHeaders();
		headers.setContentDispositionFormData("attachment", customer.getDesign_files());
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.OK);
	}

}
