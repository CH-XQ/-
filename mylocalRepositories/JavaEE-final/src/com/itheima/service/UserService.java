package com.itheima.service;

import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Users;
import com.itheima.po.Lesson;
import com.itheima.common.utils.Page;
import com.itheima.dao.UserDao;

public interface UserService {
	public Users findUser(String id,String password);

	public void change_is_enable_false(String id);

	public StudentCustomer findStudentCustomer(String id);

	public TeacherCustomer findTeacherCustomer(String id);

	public void choselesson(String id, String lesson_id);

	public Page<Lesson> findalllessons(Integer page, Integer rows);

	public Lesson showlesson(String lesson_id);

	public void createlesson(Lesson newlesson);

	public void changedesign_files(String student_id, String string);

	public Page<StudentCustomer> findallStudentwork(Integer page, Integer rows, String lessonid);

	public String getfile(String student_id);

	public void addstudent(String student_id, String lesson_id);

	public void addUser(String username,String id,String password,Integer user_level,Integer is_enable);
}
