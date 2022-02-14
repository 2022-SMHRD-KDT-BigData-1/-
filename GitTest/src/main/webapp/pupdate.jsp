<%@page import="com.pplus.model.PMemberDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	PMemberDTO member= (PMemberDTO)session.getAttribute("member"); 

	PMemberDAO dao =new PMemberDAO();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="PUpdateCon.do" method="post">
		<input type="text" name="id" value="${member.member_id }" readonly>
		<br>
		<input type="password" name="pw" placeholder="수정할 password를 입력하세요">
		<br>
		<input type="text" name="nick" placeholder="수정할 nickname을 입력하세요">
		<input type="submit" value="정보 수정">
	</form>
</body>
</html> 