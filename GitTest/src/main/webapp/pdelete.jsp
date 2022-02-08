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
	 
	function checked() {
		var ckeck = document.getElementsByName("ck");
		
		if(document.data.ckeck[0].ckecked == false && document.data.ckeck[1].ckecked == false){
			
			alert("동의해 주세요");
			
			return false;
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