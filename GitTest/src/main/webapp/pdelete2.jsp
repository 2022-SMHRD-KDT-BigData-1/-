<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="jquery-3.6.0.min"></script>
<link rel="stylesheet" type="text/css" href="css1/util.css" />
<link rel="stylesheet" type="text/css" href="css1/main.css" />
<style>
.wrap-login100 {
	border: solid 4px #30467c;
	width: 490px;
	height: 400px;
	padding: 30px 55px 33px 55px;
	text-align: center;
}
.bt{
background-color: black;
    font-family: -webkit-body;
   
    border-style: none;
    height: 31px;
    width: 85px;
    border-radius: 3px;
    color: white;
}

</style>
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<img src="image/p+만1.png" width="180"
					style="display: block; margin: auto;">
				<form class="delete" action="PDeleteCon.do" method="post"
					onsubmit="return checkbox_Check();" style="font-size:25px; line-height:2;">
					회원 탈퇴에 동의 하십니까?<br>동의하기  <input type="checkbox" value="동의" name="ck" ><br>
						<input class="bt" type="submit" value="확인">
				</form>
				<script>
					function checkbox_Check() {
						if ($("input[name=ck]").is(":checked") == false) {
							alert("개인정보동의에 체크하세요.");
							return false;
						}
					}
				</script>
			</div>
		</div>
	</div>



</body>
</html>