<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>
<script>
	 
	
		function checkbox_Check(){
		     if ($("input:checkbox[name=ck]").is(":checked")) {
		                //체크가 되어있을때.    
		        } else {
		                //체크가 안되어있을때.
		        }
		    }
	
		
	</script>
	<form action="PDeleteCon.do" method="post" name="data" onsubmit="return checked()">
		회원 탈퇴에 동의 하십니까?<input type="checkbox" value="동의" name="ck"><br>
		정말로 떠나기를 동의 하십니까?<input type="checkbox" value="동의" name="ck"><br>
		<input type="submit" value="확인">
	</form>
	
</body>
</html>