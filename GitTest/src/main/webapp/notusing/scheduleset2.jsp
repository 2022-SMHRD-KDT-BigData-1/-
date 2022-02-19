<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ScheduleCon.do" method="post">
	책 제목 : <input type="text" name="book_title" value="${bk.book_title}"><br>
		책 페이지 수 : <input type="text" name="book_page" value="${bk.book_page}"><br>
		<input type="text" name="book_num" value="${bk.book_num }" style="display: none">
			 제목 : <input type="text" name="title"> <br>
				 
				시작일 : <input type="date" name="start" id="Date1" onchange="call()" value="">   ~   
				종료일 : <input type="date" name="end" id="Date2" onchange="call()" value=""> <p></p>
			 	일차이 계산 : <input type="text" id="day" size="6" style="text-align:center;" name="day">
			 	
			<input type="submit" value="등록" >	
	</form>
	<script type="text/javascript">
	function call() {
	    var sdd = document.getElementById("Date1").value;
	    var edd = document.getElementById("Date2").value;
	    var ar1 = sdd.split('-');
	    var ar2 = edd.split('-');
	    var da1 = new Date(ar1[0], ar1[1], ar1[2]);
	    var da2 = new Date(ar2[0], ar2[1], ar2[2]);
	    var dif = da2 - da1;
	    var cDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
	   
	 if(sdd && edd){
	  
	    document.getElementById('day').value = parseInt(dif/cDay);
	 }
	}
	</script>
</body>
</html>