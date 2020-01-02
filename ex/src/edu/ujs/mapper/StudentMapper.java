package edu.ujs.mapper;

import org.apache.ibatis.annotations.Param;

import edu.ujs.beans.Student;

public interface StudentMapper {
	
	public Student selectStudent(@Param("Stu_id") String Stu_id,@Param("Stu_password") String Stu_password); //查找学生信息
	public void InsertStudent(Student student); //插入学生信息
	public void DeleteStudent(Student student); //删除学生信息
	public void UpdateStudent(Student student); //更新学生信息
	
}
