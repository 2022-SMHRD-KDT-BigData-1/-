<%@page import="com.pplus.model.TodoDTO"%>
<%@page import="com.pplus.model.TodoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@page import="com.pplus.model.ScheduleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
ScheduleDTO schedule = (ScheduleDTO) session.getAttribute("schedule");
PMemberDTO member = (PMemberDTO) session.getAttribute("member");

TodoDAO todoDAO = new TodoDAO();
ArrayList<TodoDTO> todolist = new ArrayList<TodoDTO>();

int pageSize = 10;
String pageNum = request.getParameter("pageNum");

if (pageNum == null) {
	pageNum = "1";
}

int currentPage = Integer.parseInt(pageNum);

int startRow = (currentPage - 1) * pageSize + 1;
int endRow = currentPage * pageSize;

int count = 0;
count = todoDAO.getCount2(member.getMember_nick());

if (count > 0) {
	todolist = todoDAO.membertodoSelectAll(member.getMember_nick());
	pageContext.setAttribute("todolist", todolist);

}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>P+(Programming에 Planner를 더하다.)</title>
<!-- Favicon  -->
<link rel="icon" href="image/p+만.png" />
<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css" />
<link rel="stylesheet" href="style.css" />


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">


<!-- Option 2: Separate Popper and Bootstrap JS -->

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>


<!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="image/p+만1.png" alt="" /></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<button type="button" class="btn" data-toggle="collapse"
					data-target="#demo" style="background-color:black">
					<span></span><span></span><span></span>
				</button>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="demo">
			<ul class="navbar-nav">

				<li clas="nav-item"><a class="nav-link" href="#">사이트 소개</a></li>
				<li clas="nav-item"><a class="nav-link" href="컨텐츠추천.jsp">컨텐츠
						추천</a></li>
				<li clas="nav-item"><a class="nav-link" href="plannermain.jsp">학습플래너</a></li>
				<li clas="nav-item"><a class="nav-link" href="#">포트폴리오</a></li>
				<li clas="nav-item"><a class="nav-link" href="mypg_main.jsp">마이페이지</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">로그아웃</a></li>
			</ul>
		</div>
		<header id="header" class="fixed-top header-scrolled">
			<nav id="navbar" class="navbar">
				<a style="padding-left: 15px" href="ploginmain.jsp"><img
					style="width: 50px" src="image/p+만1.png"></a>
				<ul style="padding-right: 30px">
					<li><a class="nav-link scrollto" href="#"
						style="text-decoration: none">사이트 소개</a></li>
					<li></li>
					<div class="dropdown nav-item active">
						<a style="text-decoration: none" class="nav-link dropdown-toggle"
							href="컨텐츠추천.jsp">컨텐츠 추천</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="ptype.jsp">유형 확인 및
									재검사</a></li>
							<li><a class="dropdown-item" href="search1.jsp">책 검색</a></li>
						</ul>
					</div>

					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="plannermain.jsp">학습플래너</a>
						<span class="caret"></span>

						<ul class="dropdown-menu">
							<li class="dropdown-header">스케줄</li>
							<hr>
							<li><a href="scheduleset.jsp">등록</a></li>
							<li><a href="scheduleindex.jsp">전체 스케줄 목록</a></li>

							<br>
							<li class="divider"></li>
							<li class="dropdown-header">일정</li>
							<hr>
							<li><a href="dayplantodayset.jsp">등록</a></li>
							<li><a href="dayplantodayindex.jsp">전체 일정 목록</a></li>

							<br>
							<li class="divider"></li>
							<li class="dropdown-header">조회</li>
							<hr>
							<li><a href="editorallindex.jsp">전체 에디터 목록</a></li>
							<li><a href="diaryallindex.jsp">전체 일기 목록</a></li>
							<li><a href="todoallindex.jsp">전체 할 일 목록</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="#">포트폴리오</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="#">등록</a></li>

							<li><a class="dropdown-item" href="#">목록</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="mypg_main.jsp">마이페이지</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="pupdate.jsp">회원정보
									수정/탈퇴</a></li>
							<li><a class="dropdown-item" href="achieveall.jsp">전체
									학습상황 조회</a></li>
							<li><a class="dropdown-item" href="mybookwish.jsp">위시리스트</a></li>
						</ul>
					</div>
					<li class="nav-item active"><a class="nav-link"
						href="plogout.jsp">로그아웃</a></li>


				</ul>
			</nav>
		</header>



	<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<h6 class="widget-title mb-30">학습플래너</h6>
				<br>
				<!-- Widget Title -->
				<!--<h6 class="widget-title mb-30">스케줄</h6>
 -->
				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active" style="color: #fbb710"><a>스케줄</a></li>
						<hr />
						<li><a href="scheduleset.jsp">등록</a></li>
						<li><a href="scheduleindex.jsp">전체 스케줄 목록</a></li>

					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">
				<!-- Widget Title -->
				<!--<h6 class="widget-title mb-30">일정</h6>
 -->
				<!-- Widget Title -->

				<div class="catagories-menu">
					<ul>
						<li class="active" style="color: #fbb710"><a>일정</a></li>
						<hr />
						<li><a href="dayplantodayset.jsp">등록</a></li>
						<li><a href="dayplantodayindex.jsp">전체 일정 목록</a></li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">
				<!-- Widget Title -->
				<!-- <h6 class="widget-title mb-30">일정</h6>
 -->
				<!-- Widget Title -->

				<div class="catagories-menu">
					<ul>
						<li class="active" style="color: #fbb710"><a>조회</a></li>
						<hr />
						<li><a href="editorallindex.jsp">전체 에디터 목록</a></li>
						<li><a href="diaryallindex.jsp">전체 일기 목록</a></li>
						<li><a href="todoallindex.jsp">전체 할 일 목록</a></li>

					</ul>
				</div>
			</div>
		</div>

		<div style="width: 60%; margin-top: 110px; margin-left: 300px;">

			<h1 style="text-align: center;">
				할 일 <i class="fas fa-solid fa-list-ul"></i>
			</h1>
			<br>
			<div class="container">
			<c:set value="<%= (currentPage-1)*10%>" var="j" />
				<table
					class="table table-bordered table-hover table-sm text-center ">


					<thead class="table-warning ">
						<tr>
						<th class="text-center">선택</th>
						<th class="text-center">No.</th>
						<th class="text-center">스케줄명</th>
						<th class="text-center">할 일 날짜</th>
						<th class="text-center">할 일 제목</th>
						<th class="text-center">조회</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="i" items="${todolist }">
						<c:forEach var="s" items="${schedulelist }">
						<c:choose>
							<c:when test="${i.schedule_num == s.schedule_num }">
								<tr>
									<td><div class="form-check">
											<input class="form-check-input" type="checkbox"
												name="flexRadioDefault" id="flexRadioDefault1" value="${i.todo_num }"> <label
												class="form-check-label" for="flexRadioDefault1"> </label>
										</div></td>
									<td><input value="${i.todo_num }" style="display: none;"
										name="num"> <input value="${i.member_nick }"
										style="display: none;" name="nick"> ${j =j+ 1}</td>
									<td>${s.schedule_name }</td>
									<td>${i.todo_date }</td>								
									<td>${i.todo_title }</td>
									<%-- <c:choose>
										<c:when test="${i.todo_check ==1}">
											<td><input class="myCheck" type="checkbox" id="${i.todo_num}" name="checkbox" value="${i.todo_num}" checked></td>
										</c:when>
										<c:otherwise>
											<td><input class="myCheck"  type="checkbox" id="${i.todo_num}" name="checkbox" value="${i.todo_num}"></td>
										</c:otherwise>
									</c:choose> --%>
									<td><a
										href="todoset.jsp" style="font-size: 16px;"> 이동</a></td>

								</tr>
							</c:when>
						</c:choose>
						</c:forEach>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<br>
			<!-- <div class="text-center" >
				<a href="#" class="btn btn-dark">목록 보기</a>
				<a href="#" class="btn btn-dark" id="delete">선택 삭제</a>
			</div> -->
		</div>
	</div>


	<div style="width: 80%; margin-top: 10%; margin-left: 70px;">

		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
	</div>


	<script src="jquery-3.6.0.min.js"></script>
	<script> 
		$('.myCheck').change(function() {
			if(this.checked) {
				console.log("체크확인" + this.value);
				
				$.ajax({
					url : "CheckInputValue.do",
					type : "post",
					dataType : "json",
					data : {"todo_num" : this.value, "value" : "1"},
					success : function(data){
						console.log("통신성공");
					},
					error : function(e){
						console.log(e);
					}
				});
			}else{
				console.log("체크풀림");
				$.ajax({
					url : "CheckInputValue.do",
					type : "post",
					dataType : "json",
					data : {"todo_num" : this.value, "value" : "0"},
					success : function(data){
						console.log("통신성공");
					},
					error : function(e){
						console.log(e);
					}
				});
			}
		});	

		$(document).ready(function() {
			
			
			$("#delete").click(function () {
				var list = [];
				 var val = document.getElementsByName("flexRadioDefault");
				  var size = val.length;
				    for(var i = 0; i < size; i++){
				        if(val[i].checked == true){
				        	list.push(val[i].value);
				        	console.log("체크체크");
				        }
				    }
				    location.href='TodoAllDeleteCon.do?list='+list;
				    console.log(list);
			});
			 
		});
	</script>
	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>

</body>
</html>
