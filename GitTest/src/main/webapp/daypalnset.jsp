<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="DayplanCon.do" method="post">
		제목 : <input type="text" name="title"> <br>
		시작일 : <input type="date" name="start" id="Date1" onchange="call()" value="">   ~   
		종료일 : <input type="date" name="end" id="Date2" onchange="call()" value=""> <br>
	 	일차이 계산 : <input type="text" id="day" size="6" style="text-align:center;" name="day">
		
		<input type="submit" value="일정 등록" id="submit">
	</form>
</body>
</html>