<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="PJoinCon.do" method="post">
		<input type="text" name="id" placeholder="id를 입력하세요">
		<br>
		<input type="password" name="pw" placeholder="password를 입력하세요">
		<br>
		<input type="text" name="nick" placeholder="nickname을 입력하세요">
		<br>
		<input type="text" name="name" placeholder="이름을 입력하세요">
		<br>
		<input type="submit" value="회원가입">
		<input type="button" value="뒤로가기" onclick = "location.href = 'pmain.jsp'">
	</form>
</body>
</html>