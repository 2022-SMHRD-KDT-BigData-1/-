<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
    <select name="type1" >
			<option value="대분류">대분류</option>
			<option value="P102">IT일반</option>
		
		</select>
		<select name="type2" >
			<option value="중분류">중분류</option>
			<option value="P206">IT일반서</option>
		
		</select>
		<select name="type3" >
			<option value="소분류">소분류</option>
			<option value="0"></option>
		</select>
    <button onclick="sendTypeValue()">확인</button>
 <script  src="jquery-3.6.0.min.js"></script>
<script>
	function sendTypeValue() {
		var type1 = $("select[name = type1]").val();
		var type2 = $("select[name = type2]").val();
		var type3 = $("select[name = type3]").val();
		console.log(type1+" "+type2+" "+type3);
		
		location.href = "PTypeCon.do?data1="+type1+"&data2="+type2+"&data3="+type3;
		//opener.setTypeValues(type1,type2,type3);
		
		alert("유형조사가 완료되었습니다!");
		
		//window.close();
	}
</script>

</body>
</html>