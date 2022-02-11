<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="PJoinCon.do" method="post">
		<input type="text" name="id" id="input_id" placeholder="아이디를 입력하세요">
		<font id="checkId" size="2"></font>
		<br>
		<input type="password" name="pw" id="input_pw" placeholder="비밀번호를 입력하세요">
		<br>
		<input type="text" name="nick" id="input_nick" placeholder="닉네임을 입력하세요">
		<font id="checkNick" size="2"></font>
		<br>
		<input type="text" name="name" id="input_name" placeholder="이름을 입력하세요">
		<br>
		<input type="submit" value="회원가입">
		<input type="button" value="뒤로가기" onclick = "location.href = 'pmain.jsp'">
	</form>
	<script src="jquery-3.6.0.min.js"></script>
	<script>
	$('#input_id').focusout(function(){
		let memberid=$('#input_id').val();
		$.ajax({
			url : "IdCheck.do",
			type: "post",
			data : {memberid : memberid},
			dataType : 'json',
			success : function(result){
				if(result==0){
					$("#checkId").html('사용불가');
					$("#checkId").attr('color', 'red');
				} else {
					$("#checkId").html('사용가능');
					$("#checkId").attr('color', 'green');
				}
			},
			error : function(){
				alert("서버요청실패");
			}
		})
	})
	
	$('#input_nick').focusout(function(){
		let memberid=$('#input_nick').val();
		$.ajax({
			url : "NickCheck.do",
			type: "post",
			data : {membernick : membernick},
			dataType : 'json',
			success : function(result){
				if(result==0){
					$("#checkNick").html('사용불가');
					$("#checkNick").attr('color', 'red');
				} else {
					$("#checkNick").html('사용가능');
					$("#checkNick").attr('color', 'green');
				}
			},
			error : function(){
				alert("서버요청실패");
			}
		})
	})
	
	
	</script>
</body>
</html>