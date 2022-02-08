<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="form1" name="form1" method="post">
    
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
			<option value=""></option>
    
    <input type="button" value="확인" onclick="test1(); return false;">
</form>
 
<script>
    function test2(){
        var form = $("form")[0];        
        var formData = new FormData(form);

        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/PTypeCon.do", // 요기에
            processData: false,
            contentType: false,
            type : 'POST', 
            data : formData, 
            success : function(data) {
                var jsonObj = JSON.parse(data);
            }, // success 
    
            error : function(xhr, status) {
                alert(xhr + " : " + status);
            }
        }); // $.ajax */    }
</script>

</body>
</html>