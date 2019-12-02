package com.itheima.service;

import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Test;
import com.itheima.po.Users;
import com.itheima.po.admin;
import com.itheima.po.Lesson;
import com.itheima.po.OfficeCustomer;
import com.itheima.common.utils.Page;
import com.itheima.dao.UserDao;

public interface UserService {
	
	public Users findUser(String id,String password);

	public StudentCustomer findStudentCustomer(String id);

	public TeacherCustomer findTeacherCustomer(String id);

	public OfficeCustomer findOfficeCustomer(String id);
	
	public admin findadminCustomer(String id);

	public Page<Test> findpublictest(Integer page, Integer rows);



}
