<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta CHARSET="UTF-8">
<title>教务管理系统登录页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/1.js"></script>
</head>
<body>
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">欢迎登录</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
						
							<div class="tit">
								<h1>用户登录</h1>
							</div>
							
							<div class="msg_cont">
								<b></b>
								<span id="erroMessage" class="errorMsg">请输入用户名和密码</span>
							</div>
							
							<div class="form">
							<!-- 首先会判断loginForm的方法检查form表单是否合理，如果合理则提交到以/login.action结尾的请求中 -->
								<form id="loginForm" action="${pageContext.request.contextPath }/login" >
								
									<label>用户账号：</label>
									<input name="id" id="id" type="text" placeholder="请输入账号"  autocomplete="off" tabindex="1"/>
									<br />
									<br />
									<span>
										<label>用户密码：</label>
										<input name="password" id="password" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1">
									</span>	
									<br />
									<br />
									<input type="submit" value="登录" id="sub_btn"/>
								</form>
							</div>						
						</div>
					</div>
				</div>
			</div>
		<div id="bottom">
			<span>
				@教务管理系统
			</span>
		</div>
</body>
</html>