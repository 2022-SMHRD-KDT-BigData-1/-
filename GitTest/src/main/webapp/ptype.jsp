<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="PTypeCon.do" method="post">
		<select name="type1" >
			<option value="대분류">대분류</option>
			<option value="P102">IT일반</option>
		
		</select>
		<select name="type2" >
			<option value="중분류">중분류</option>
			<option value="P206">IT일반서</option>
		
		</select>
		<select name="type3" >
			<option value="소분류">소분류</option>
			<option value=""></option>
		
		</select>
	</form>
</body>
</html>