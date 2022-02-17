<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="DayplanCon.do" method="post">
		제목 : <input type="text" name="title"><br>
		 <p id="current_date">오늘 날짜 </p>
		<input type="submit" value="일정등록">
	</form>
	<script>
		date = new Date();
		year = date.getFullYear();
		month = date.getMonth() + 1;
		day = date.getDate();
		document.getElementById("current_date").innerHTML ="오늘 날짜 : "+ year + "/" + month + "/" + day;
	</script>
</body>
</html>