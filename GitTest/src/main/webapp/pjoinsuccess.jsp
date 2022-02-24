<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!-- Title  -->
<title>P+(Programming에 Planner를 더하다.)</title>
<!-- Favicon  -->
<link rel="icon" href="image/p+만.png" />
</head>
<body>
	<div>
		<nav>
		<ul>
			<li><h1>환영합니다!</h1></li>
			<li>회원가입을 축하합니다.</li>
			<li>P+의 닉네임은 ${requestScope.nick }입니다.</li>
			<li>P+의 아이디는 ${requestScope.id }입니다.</li>
			<li><button onclick='location.href="poutmain.jsp"'>메인으로</button></li>
		</ul>
		</nav>
	</div>
</body> 
</html>