$(function(){
	//密码只能由字母和数字组成
	
	$("#loginForm").submit(function(){
		//获取输入的用户id和密码
		var idText=$("#id").val();
		var passwordText=$("#password").val();
		
		//用户id必须为10位的数字，密码必须为5-12位的字符串
		var uatt=/\d{10}/;
		var patt=/^\w{5,12}$/;
		
		if(!patt.test(passwordText) || !uatt.test(idText))
		{
			$("#erroMessage").text(" ");
			$("#erroMessage").text("账号或者密码格式错误");
			return false;
		}
		else
			return true;
	});
	
	$("#MenuBtn_SelectCourse").click(function(){
//		$(location).attr('href','http://localhost:8080/DoplomaGraduationCertificate/html/student/CourseSelect.html');
		$(location).attr('href','http://localhost:8080/ems/pages/SelectCourse.jsp');
	});
	$("#MenuBtn_TeachAssessment").click(function(){
//		$(location).attr('href','http://localhost:8080/DoplomaGraduationCertificate/html/student/TeachingAssessment.html');
		$(location).attr('href','./TeachingAssessment.html');
	});
});