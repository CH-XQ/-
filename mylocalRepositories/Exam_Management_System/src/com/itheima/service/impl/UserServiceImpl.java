package com.itheima.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.common.utils.Page;
import com.itheima.dao.UserDao;
import com.itheima.po.StudentCustomer;
import com.itheima.po.TeacherCustomer;
import com.itheima.po.Test;
import com.itheima.po.Users;
import com.itheima.po.admin;
import com.itheima.po.Lesson;
import com.itheima.po.OfficeCustomer;
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
	public OfficeCustomer findOfficeCustomer(String id) {
		// TODO Auto-generated method stub
		OfficeCustomer user1 = this.userDao.findOfficeCustomer(id);
		return user1;
	}
	
	@Override
	public admin findadminCustomer(String id) {
		// TODO Auto-generated method stub
		admin user1 = this.userDao.findadminCustomer(id);
		return user1;
	}

	@Override
	public Page<Test> findpublictest(Integer page, Integer rows) {
		// TODO Auto-generated method stub
		Test test = new Test();
		@SuppressWarnings("unchecked")
		List<Test> tests = userDao.findpublictest();
		//Integer count = userDao.testListCount();
		Page<Test> result = new Page<>();
		result.setPage(page);
		result.setRows(tests);
		result.setSize(rows);
		//result.setTotal(count);
		return result;
	}
	
	
}
