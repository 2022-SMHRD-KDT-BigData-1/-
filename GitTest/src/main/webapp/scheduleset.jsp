<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>스케줄</h1>
	
		<%-- <c:choose>
			<c:when test="${empty requestScope.book_data  }">
				<c:otherwise> --%>
					책 검색 : <input type="text" id="book" onclick="book()" placeholder="책을 입력 해 주세요">
					<input type="button" value="검색" onclick="book()"><br>
					위시리스트에서 찾기 : <input type="button" value="내 위시리스트" onclick="mybook()">
			<%-- 	</c:otherwise>
			</c:when>
		</c:choose> --%>
	<form action="ScheduleCon.do" method="post">
		제목 : <input type="text" name="title"> <br>
		시작일 : <input type="date" name="start" id="Date1" onchange="call()" value="">   ~   
		종료일 : <input type="date" name="end" id="Date2" onchange="call()" value=""> <p></p>
 
		
	 	일차이 계산 : <input type="text" id="day" size="6" style="text-align:center;" name="day">
		
		<input type="submit" value="등록">
	</form>
	<script langauge="javascript">
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
	
	function book() {
		window.open("booksearch.jsp","bk","width=500, height=400, scrollbars=no, resizable=no");
	}
	function mybook() {
		window.open("","","width=500, height=400, scrollbars=no, resizable=no");
		// 위시리스트 페이지 만들면 넣기
	}
	
	
	</script>
</body>
</html>