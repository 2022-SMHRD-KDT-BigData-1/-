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
<link rel="stylesheet" type="text/css" href="css1/util.css" />
<link rel="stylesheet" type="text/css" href="css1/main.css" />
<style>
.wrap-login100 {
	border: solid 4px #30467c;
	width: 490px;
	height: 470px;
	padding: 30px 55px 33px 55px;
	text-align: center;
}

.joinsuc {
line-height:2;}
</style>
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<ul>
					<li class="joinsuc"><img src="image/p+만1.png" width="180"
						style="display: block; margin: auto;"></li>
					<li class="joinsuc"><h1>환영합니다!</h1></li>
					<li class="joinsuc"><h2>p+ 회원이 되신 것을 축하합니다.</h2></li>
					<li class="joinsuc"><h2>아이디는 ${requestScope.id }입니다.</h2></li>
					<li class="joinsuc"><h2>닉네임은 ${requestScope.nick }입니다.</h2></li>
					<li class="joinsuc"><button onclick='location.href="poutmain.jsp"'><u>메인으로</u></button></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>