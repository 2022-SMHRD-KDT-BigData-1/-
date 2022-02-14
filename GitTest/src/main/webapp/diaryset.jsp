<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
	 textarea {
    width: 100%;
    height: 6.25em;
    border: none;
    resize: none;
  }
</style>
</head> 
<body>
	<h1>일기</h1>
	<form action="DiaryCon.do" method="post">
		<table border="1" width="400px">
			<tr>
				<td align="center">
					제목
				</td>
				<td>
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea rows="56" cols="5" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>