package com.itheima.po;

import java.io.Serializable;
import java.sql.Date;

public class Users implements Serializable{
	private String id;
	private String password;
	public Integer level;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	
	
}
