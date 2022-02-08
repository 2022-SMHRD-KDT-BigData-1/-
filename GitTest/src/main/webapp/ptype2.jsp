<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<select id = "type1" name="type1" >
			<option value="대분류">대분류</option>
			<option value="P102">IT일반</option>
		
		</select>
		<select name="type2" >
			<option value="중분류">중분류</option>
			<option value="P206">IT일반서</option>
		
		</select>
		<select name="type3" >
			<option value="소분류">소분류</option>
			<option value=""></option>
		
		</select>

		<button onclick="j();">제출</button>
		
	
	
	<script>

	
	function j() {
		var select1 = document.getElementById("type1");
		select1 = select1.options[select1.selectedIndex].value;
		
		var select2 = document.getElementById("type2");
		select2 = select2.options[select2.selectedIndex].value;
		
		var select3 = document.getElementById("type3");
		select3 = select3.options[select3.selectedIndex].value;
		
		
		var allData = { "type1": select1, "type2": select2, "type":select3 };
		
		$.ajax({
	        url:"PTypeCon.do",
	        type:'POST',
	        data: allData,
	        success:function(data){
	            alert("완료!");
	            window.opener.location.reload();
	            self.close();
	        },
	        error:function(jqXHR, textStatus, errorThrown){
	            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
	            self.close();
	        }
	    });
		
	}
	
	</script>
	
	<script>
	
	
		
	
		
	</script>
	
	
</body>
</html>