package com.itheima.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.common.utils.Page;
import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Users;
import com.itheima.po.Lesson;

public interface UserDao {
	
	public Users findUser(@Param("id") String id,
						 @Param("password") String password);
	//public User findUser(User user);

	public void change_is_enable_false(@Param("student_id") String id);

	public StudentCustomer findStudentCustomer(String id);

	public TeacherCustomer findTeacherCustomer(String id);

	public void choselesson(@Param("student_id") String id,
							@Param("lesson_id") String i);
	
	public List<Lesson> findalllessons();

	public Integer lessonListCount();

	public Lesson showlesson(@Param("lesson_id") String lesson_id);

	public void createlesson(Lesson newlesson);

	public void teacherlessonchange(@Param("lesson_id")String lesson_id,
									@Param("teacher_id") String teacher_id);

	public void lessonchange(@Param("lesson_id") String i);

	public void changedesign_files(@Param("student_id") String student_id,
								   @Param("design_files") String file);

	public List<StudentCustomer> findallStudentwork(String lesson_id);

	public String getfile(@Param("student_id") String student_id);

	public void addstudent(@Param("student_id")String student_id,
						   @Param("lesson_id") String lesson_id);

	public void addUser(@Param("username") String username,
						@Param("id")String id,
						@Param("password") String password,
						@Param("user_level") Integer user_level,
						@Param("is_enable")Integer is_enable);
}
