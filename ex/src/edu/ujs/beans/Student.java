package edu.ujs.beans;


public class Student{
	private String Stu_id; //学生ID
	private String Stu_password; //学生登录密码
	private double Stu_balance; //学生账号余额
	private String Stu_name; //学生姓名
	private int Stu_specialty; //学生专业
	private char Stu_gender; //学生性别
	private String Stu_enroll; //入学年份
	private String Stu_brith; //出生年份
	private String Stu_debt; //学生欠款
	
	public String getStu_id() {
		return Stu_id;
	}
	public void setStu_id(String stu_id) {
		Stu_id = stu_id;
	}
	public String getStu_password() {
		return Stu_password;
	}
	public void setStu_password(String stu_password) {
		Stu_password = stu_password;
	}
	public double getStu_balance() {
		return Stu_balance;
	}
	public void setStu_balance(double stu_balance) {
		Stu_balance = stu_balance;
	}
	public String getStu_name() {
		return Stu_name;
	}
	public void setStu_name(String stu_name) {
		Stu_name = stu_name;
	}
	public int getStu_specialty() {
		return Stu_specialty;
	}
	public void setStu_specialty(int stu_specialty) {
		Stu_specialty = stu_specialty;
	}
	public char getStu_gender() {
		return Stu_gender;
	}
	public void setStu_gender(char stu_gender) {
		Stu_gender = stu_gender;
	}
	public String getStu_enroll() {
		return Stu_enroll;
	}
	public void setStu_enroll(String stu_enroll) {
		Stu_enroll = stu_enroll;
	}
	public String getStu_brith() {
		return Stu_brith;
	}
	public void setStu_brith(String stu_brith) {
		Stu_brith = stu_brith;
	}
	public String getStu_debt() {
		return Stu_debt;
	}
	public void setStu_debt(String stu_debt) {
		Stu_debt = stu_debt;
	}
	@Override
	public String toString() {
		return "Student [Stu_id=" + Stu_id + ", Stu_password=" + Stu_password + ", Stu_balance=" + Stu_balance
				+ ", Stu_name=" + Stu_name + ", Stu_specialty=" + Stu_specialty + ", Stu_gender=" + Stu_gender
				+ ", Stu_enroll=" + Stu_enroll + ", Stu_brith=" + Stu_brith + ", Stu_debt=" + Stu_debt + "]";
	}
	
}

