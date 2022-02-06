<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<form action="PloginCon.do" method="post">
		<input type="text" name="id" placeholder="id를 입력하세요">
		<br>
		<input type="password" name="pw" placeholder="password를 입력하세요">
		<br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>