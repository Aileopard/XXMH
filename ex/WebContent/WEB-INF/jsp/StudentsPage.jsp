<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/StudentFace.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/1.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 通过session找到controller添加进Student_Session的学生对象 -->
<%session.setAttribute("Stu_id", request.getAttribute("id")); %>
		<div id="StudentInformation">
			<table id="StudentInformationTable">
				<tr>
					<td name="studentId">学号:</td>
					<td>${Student_Session.getStu_id()}</td>
					<td class>余额:</td>
					<td>${Student_Session.getStu_balance() }</td>
				</tr>
				<tr>
					<td>姓名:</td>
					<td>${Student_Session.getStu_name() }</td>
					<td>专业:</td>
					<td>${Student_Session.getStu_specialty() }</td>
				</tr>
			</table>
		</div>
		<div id="MenuBtn">
			<button id="MenuBtn_SelectCourse">选课系统</button><br/>
			<button id="MenuBtn_TeachAssessment">评教系统</button><br/>
			<button id="MenuBtn_MyClassSchedule">我的课表</button><br/>
			<button id="MenuBtn_MyScore">我的成绩</button><br/>
			<button id="MenuBtn_PaymentPlatform">缴费平台</button><br/>
			<button id="MenuBtn_TrainPlan">培养计划</button><br/>		
		</div>
	</body>
</html>