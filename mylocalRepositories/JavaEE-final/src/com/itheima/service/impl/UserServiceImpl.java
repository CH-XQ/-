package com.itheima.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.common.utils.Page;
import com.itheima.dao.UserDao;
import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Users;
import com.itheima.po.Lesson;
import com.itheima.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public Users findUser(String id,String password) {
		// TODO Auto-generated method stub
		Users user1 = this.userDao.findUser(id,password);
		return user1;
	}

	@Override
	public void change_is_enable_false(String id) {
		// TODO Auto-generated method stub
		this.userDao.change_is_enable_false(id);
	}

	@Override
	public StudentCustomer findStudentCustomer(String id) {
		// TODO Auto-generated method stub
		StudentCustomer user1 = this.userDao.findStudentCustomer(id);
		return user1;
	}

	@Override
	public TeacherCustomer findTeacherCustomer(String id) {
		// TODO Auto-generated method stub
		TeacherCustomer user1 = this.userDao.findTeacherCustomer(id);
		return user1;
	}

	@Override
	public void choselesson(String id,String i) {
		// TODO Auto-generated method stub
		this.userDao.choselesson(id,i);
		this.userDao.lessonchange(i);
	}

	@Override
	public Page<Lesson> findalllessons(Integer page, Integer rows) {
		// TODO Auto-generated method stub
		Lesson lesson = new Lesson();
		@SuppressWarnings("unchecked")
		List<Lesson> lessons = userDao.findalllessons();
		Integer count = userDao.lessonListCount();
		Page<Lesson> result = new Page<>();
		result.setPage(page);
		result.setRows(lessons);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}

	@Override
	public Lesson showlesson(String lesson_id) {
		return this.userDao.showlesson(lesson_id);
	}

	@Override
	public void createlesson(Lesson newlesson) {
		// TODO Auto-generated method stub
		this.userDao.createlesson(newlesson);
		this.userDao.teacherlessonchange(newlesson.getLesson_id(),newlesson.getTeacher_id());
	}

	@Override
	public void changedesign_files(String student_id, String file) {
		// TODO Auto-generated method stub
		this.userDao.changedesign_files(student_id,file);
	}

	@Override
	public Page<StudentCustomer> findallStudentwork(Integer page, Integer rows,String lesson_id) {
		// TODO Auto-generated method stub
		StudentCustomer studentCustomer = new StudentCustomer();
		@SuppressWarnings("unchecked")
		List<StudentCustomer> studentCustomers = userDao.findallStudentwork(lesson_id);
		Integer count = userDao.lessonListCount();
		Page<StudentCustomer> result = new Page<>();
		result.setPage(page);
		result.setRows(studentCustomers);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}

	@Override
	public String getfile(String student_id) {
		// TODO Auto-generated method stub
		return this.userDao.getfile(student_id);
	}

	@Override
	public void addstudent(String student_id, String lesson_id) {
		// TODO Auto-generated method stub
		this.userDao.addstudent(student_id,lesson_id);
		this.userDao.lessonchange(lesson_id);
	}

	@Override
	public void addUser(String username,String id,String password,Integer user_level,Integer is_enable) {
		// TODO Auto-generated method stub
		this.userDao.addUser(username,id,password,user_level,is_enable);
	}
	
}
