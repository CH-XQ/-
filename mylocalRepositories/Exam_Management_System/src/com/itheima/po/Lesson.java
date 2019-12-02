package com.itheima.po;

public class Lesson {
	private String lesson_id;
	private String teacher_id;
	private String lesson_name;
	private int students_max_number;
	private int students_number;
	private int lesson_properties;
	private int lesson_objective;
	private String lesson_details;
	private int is_new;
	private int is_insocial;
	public String getLesson_id() {
		return lesson_id;
	}
	public void setLesson_id(String lesson_id) {
		this.lesson_id = lesson_id;
	}
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getLesson_name() {
		return lesson_name;
	}
	public void setLesson_name(String lesson_name) {
		this.lesson_name = lesson_name;
	}
	
	public int getStudents_max_number() {
		return students_max_number;
	}
	public void setStudents_max_number(int students_max_number) {
		this.students_max_number = students_max_number;
	}
	public int getStudents_number() {
		return students_number;
	}
	public void setStudents_number(int students_number) {
		this.students_number = students_number;
	}
	public int getLesson_properties() {
		return lesson_properties;
	}
	public void setLesson_properties(int lesson_properties) {
		this.lesson_properties = lesson_properties;
	}

	public int getLesson_objective() {
		return lesson_objective;
	}
	public void setLesson_objective(int lesson_objective) {
		this.lesson_objective = lesson_objective;
	}
	public String getLesson_details() {
		return lesson_details;
	}
	public void setLesson_details(String lesson_details) {
		this.lesson_details = lesson_details;
	}
	public int getIs_new() {
		return is_new;
	}
	public void setIs_new(int is_new) {
		this.is_new = is_new;
	}
	public int getIs_insocial() {
		return is_insocial;
	}
	public void setIs_insocial(int is_insocial) {
		this.is_insocial = is_insocial;
	}
}
