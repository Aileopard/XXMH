package edu.ujs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.ujs.beans.Student;
import edu.ujs.mapper.StudentMapper;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentMapper studentMapper;
	
	//设置studentMapper
	public void setStudentMapper(StudentMapper studentMapper) {
		this.studentMapper = studentMapper;
	}

	//查找学生信息，用于登录
	@Override
	public Student selectStudent(String Stu_id, String Stu_password){
		System.out.println("aaaaaaaa");
		Student student = studentMapper.selectStudent(Stu_id,Stu_password);
		System.out.println("cccccccc");
		return student;
	}
	
	public void update(Student student){
		this.studentMapper.UpdateStudent(student);
	}
	
	
}
