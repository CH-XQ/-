package com.itheima.po;

import java.sql.Date;

public class StudentCustomer {
	public String student_id;
	private int phone;
	private int status;
	private String real_name;
	private String lesson_teacher;
	private String lesson_id;
	private String design_files;
	private Date add_time;
	private int user_level;
	public int getUser_level() {
		return user_level;
	}
	public void setUser_level(int user_level) {
		this.user_level = user_level;
	}
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getReal_name() {
		return real_name;
	}
	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}
	public String getLesson_teacher() {
		return lesson_teacher;
	}
	public void setLesson_teacher(String lesson_teacher) {
		this.lesson_teacher = lesson_teacher;
	}
	public String getLesson_id() {
		return lesson_id;
	}
	public void setLesson_id(String lesson_id) {
		this.lesson_id = lesson_id;
	}
	public String getDesign_files() {
		return design_files;
	}
	public void setDesign_files(String design_files) {
		this.design_files = design_files;
	}
	public Date getAdd_time() {
		return add_time;
	}
	public void setAdd_time(Date add_time) {
		this.add_time = add_time;
	}
		
}
