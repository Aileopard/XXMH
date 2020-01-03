<%@page import="com.atqiu.Service.Course"%>
<%@page import="com.atqiu.Service.Student"%>
<%@page import="com.atqiu.Dao.StudentDaoImp"%>
<%@page import="com.atqiu.Dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/SelectCourse.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/1.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
  StudentDao studentDao=new StudentDaoImp();
  Course courseTable=new Course();
  courseTable=studentDao.selectCorseTableById((String)session.getAttribute("Stu_id"));
  System.out.println();
%>
	<h1 style="text-align:center;">我的课表</h1>
		<table id="CourseSelectTable">
			<tr>
				<td></td>
				<td>星期一</td>
				<td>星期二</td>
				<td>星期三</td>
				<td>星期四</td>
				<td>星期五</td>
				<td>星期六</td>
				<td>星期日</td>
			</tr>
			<tr>
				<td>第一节</td>
				<td>${MyTable.get(0) }</td>
				<td>${MyTable.get(1) }</td>
				<td>${MyTable.get(2) }</td>
				<td>${MyTable.get(3) }</td>
				<td>${MyTable.get(4) }</td>
				<td>${MyTable.get(5) }</td>
				<td>${MyTable.get(6) }</td>
			</tr>
			<tr>
				<td>第二节</td>
				<td>${MyTable.get(7) }</td>
				<td>${MyTable.get(8) }</td>
				<td>${MyTable.get(9) }</td>
				<td>${MyTable.get(10) }</td>
				<td>${MyTable.get(11) }</td>
				<td>${MyTable.get(12) }</td>
				<td>${MyTable.get(13) }</td>
			</tr>
			<tr>
				<td>第三节</td>
				<td>${MyTable.get(14) }</td>
				<td>${MyTable.get(15) }x</td>
				<td>${MyTable.get(16) }</td>
				<td>${MyTable.get(17) }</td>
				<td>${MyTable.get(18) }</td>
				<td>${MyTable.get(19) }</td>
				<td>${MyTable.get(20) }</td>
			</tr>
			<tr>
				<td>第四节</td>
				<td>${MyTable.get(21) }</td>
				<td>${MyTable.get(22) }</td>
				<td>${MyTable.get(23) }</td>
				<td>${MyTable.get(24) }</td>
				<td>${MyTable.get(25) }</td>
				<td>${MyTable.get(26) }</td>
				<td>${MyTable.get(27) }</td>
			</tr>
			<tr>
				<td>晚自习</td>
				<td>${MyTable.get(28) }</td>
				<td>${MyTable.get(29) }</td>
				<td>${MyTable.get(30) }</td>
				<td>${MyTable.get(31) }</td>
				<td>${MyTable.get(32) }</td>
				<td>${MyTable.get(33) }</td>
				<td>${MyTable.get(34) }</td>
			</tr>
		</table>
		<div style="text-align:right;">
			<button>快速选课</button>
			<button>自主选课</button>
			<button>公共课选课</button>
		</div>
</body>
</html>