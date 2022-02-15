<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <script  src="jquery-3.6.0.min.js"></script>
</head>
<body><script src="jquery-3.6.0.min"></script>
<script type="text/javascript">
$(document).ready(function() {
if("${serviceType}" == "wish"){
	 $('input:radio[name="serviceType"][value="wish"]').prop('checked', true);
	 $("#viewsearch" ).hide();
	 $("#viewuser" ).hide();
	 $("#viewwish" ).show();
}

$("input[name='serviceType']:radio").change(function () {
    var serviceType = this.value;
                    
    if(serviceType == "wish"){
        $( "#viewsearch" ).hide();
        $( "#viewuser" ).hide();
        $( "#viewwish" ).show();
    }else if(serviceType == "search"){
        $( "#viewsearch" ).show();
        $( "#viewwish" ).hide();
        $( "#viewuser" ).hide();
    }else if(serviceType == "user"){
        $( "#viewuser" ).show();
        $( "#viewsearch" ).hide();
        $( "#viewwish" ).hide();
    }
                    
});
});

</script>
	
	<h1>스케줄</h1>
	<form action="ScheduleCon.do" method="post">
		<input type="radio" value="wish" name="serviceType" checked="checked">위시리스트 찾기
		<input type="radio" value="search" name="serviceType">검색
		<input type="radio" value="user" name="serviceType">입력
		<br>
		<br>
			<span id="viewwish" >
				위시리스트에서 찾기 : <input type="text" id="wishbook_title" name="wishbook_title" onclick="mybook()" placeholder="내 위시리스트"><br>
						 <input type="button" value="내 위시리스트" onclick="mybook()"><br>
						<input type="text" id="wishbook_num" style="display: none; " name="wishbook_num">
						<input type="text" id="wishbook_page" style="display: none;" name="wishbook_page">
			</span>
			<span id="viewsearch" style="display: none;">
				책 검색 : <input type="text" id="book_title" onclick="book()" placeholder="책을 입력 해 주세요" name="book_title">
						<input type="button" value="검색" onclick="book()"><br>
						<input type="text" id="book_num" style="display: none; " name="book_num">
						<input type="text" id="book_page" style="display: none;" name="book_page">
				</span>
				<span id="viewuser" style="display: none;">
			
					책 제목 : <input type="text" name="searchbook_title"><br>
					책 페이지 수 : <input type="text" name="searchbook_page"><br>
			</span>
			<br>
			<br>

		제목 : <input type="text" name="title"> <br>
		시작일 : <input type="date" name="start" id="Date1" onchange="call()" value="">   ~   
		종료일 : <input type="date" name="end" id="Date2" onchange="call()" value=""> <p></p>
  
		
	 	일차이 계산 : <input type="text" id="day" size="6" style="text-align:center;" name="day">
		
		<input type="submit" value="등록" >
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
		window.open("wishsearch.jsp","ws","width=500, height=400, scrollbars=no, resizable=no");
		// 위시리스트 페이지 만들면 넣기
	}
	function setBookValues(name,num,page){
		document.getElementById("book_title").value = name;
		document.getElementById("book_num").value = num;
		document.getElementById("book_page").value = page;
		console.log(page);
		console.log(num);
	}
	function setBookValues1(name,num,page){
		document.getElementById("wishbook_title").value = name;
		document.getElementById("wishbook_num").value = num;
		document.getElementById("wishbook_page").value = page;
		console.log(document.getElementById("wishbook_title").value);
		console.log(document.getElementById("wishbook_num").value);
	}
	
	

	</script>
</body>
</html>