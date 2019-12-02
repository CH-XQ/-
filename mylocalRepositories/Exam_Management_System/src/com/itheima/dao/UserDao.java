package com.itheima.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.common.utils.Page;
import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Test;
import com.itheima.po.Users;
import com.itheima.po.admin;
import com.itheima.po.Lesson;
import com.itheima.po.OfficeCustomer;

public interface UserDao {
	
	public Users findUser(@Param("id") String id,
						 @Param("password") String password);

	public StudentCustomer findStudentCustomer(String id);

	public TeacherCustomer findTeacherCustomer(String id);
	
	public OfficeCustomer findOfficeCustomer(String id);
	
	public admin findadminCustomer(String id);

	public List<Test> findpublictest();

	public Integer testListCount();
	
	public void createtest(Test newtest);

	
}
