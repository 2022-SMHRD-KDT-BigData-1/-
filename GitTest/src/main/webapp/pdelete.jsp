<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="jquery-3.6.0.min"></script>
</head>
<body>

	<form action="PDeleteCon.do" method="post" onsubmit="return checkbox_Check();">
		회원 탈퇴에 동의 하십니까?<input type="checkbox" value="동의" name="ck"><br>
		<input type="submit" value="확인">
	</form>
	<script>
		function checkbox_Check(){
			if( $("input[name=ck]").is(":checked") == false ) {
				  alert("개인정보동의에 체크하세요.");
				  return false;
				}
		}
	</script>
	
</body>
</html>