package edu.ujs.service;

import edu.ujs.beans.Student;

public interface StudentService {
	//通过账号密码查询用户
	public Student selectStudent(String Stu_id, String Stu_password);
}
