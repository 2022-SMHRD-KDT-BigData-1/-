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
			<option value="">대분류</option>
			<option value="P102">IT일반</option>
		
		</select>
		<select name="type2" id = "type2" >
			<option value="">중분류</option>
			<option value="P206">IT일반서</option>
		
		</select>
		<select name="type3" id = "type3">
			<option value="">소분류</option>
			<option value="0"></option>
		
		</select>

		<button onclick="j();">제출</button>
		
	
	<script src="jquery-3.6.0.min.js"></script>
	<script>

	
	function j() {
		
		var select1 = document.getElementById("type1");
		select1 = select1.options[select1.selectedIndex].value;
		
		
		var select2 = document.getElementById("type2");
		select2 = select2.options[select2.selectedIndex].value;
		
		var select3 = document.getElementById("type3");
		select3 = select3.options[select3.selectedIndex].value;
		console.log(select3)
		
		var allData = { "type1": select1, "type2": select2, "type3":select3 };
		
		$.ajax({
	        url:"PTypeCon.do",
	        type:'POST',
	        data: allData,
	        success:function(data){
	        	if(data!=0){
	            alert("완료!");
	            console.log(data);
	            //window.opener.location.reload();
	            //self.close();
	            }
	        	else {
	        		alert("실패!");
	        	}
	        },
	        error:function(){
	            alert("서버요청실패");
	            window.close();
	        }
	    });
		
	}
	
	</script>
	
	<script>
	
	
		
	
		
	</script>
	
	
</body>
</html>