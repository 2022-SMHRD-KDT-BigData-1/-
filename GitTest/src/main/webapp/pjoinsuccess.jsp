<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<nav>
			<ul>
				<li><h1>환영합니다!</h1></li>
				<li>회원가입을 축하합니다.</li>
				<li>P+의 닉네임은 ${requestScope.nick }입니다.</li>
				<li>P+의 아이디는 ${requestScope.id }입니다.</li>
				<li>당신의 프로그래밍 타입을 조사하겠습니다.</li>
				<li><button onclick='location.href="ptype.jsp"'>타입조사</button></li>
				<li><button onclick='location.href="pmain.jsp"'>스킵</button></li>
			</ul>
		</nav>
	</div>
</body>
</html>