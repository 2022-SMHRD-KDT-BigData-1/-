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

<title>Hello, world!</title>
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

</head>

<body>
	<header
		class="navbar navbar-expand navbar-dark bg-dark bd-navbar fixed-top">
		<a class="navbar-brand" href="#">P+</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end"
			id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">사이트
						소개</a></li>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="컨텐츠추천.jsp">컨텐츠 추천</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">유형 확인 및 재검사</a></li>
					</ul>
				</div>
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
						<li><a href="dayplantodayinsex.jsp">전체 일정 목록</a></li>

						<br>
						<li class="divider"></li>
						<li class="dropdown-header">조회</li>
						<hr>
						<li><a href="editorindex.jsp">전체 에디터 목록</a></li>
						<li><a href="diaryindex.jsp">전체 일기 목록</a></li>
						<li><a href="todoindex.jsp">전체 할 일 목록</a></li>


					</ul>
				</div>

				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">포트폴리오</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="포폴등록할스케줄.jsp">등록</a></li>

						<li><a class="dropdown-item" href="포폴목록.jsp">목록</a></li>
					</ul>
				</div>

				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">마이페이지</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">회원정보 수정/탈퇴</a></li>
						<li><a class="dropdown-item" href="#">전체 학습상황 조회</a></li>
						<li><a class="dropdown-item" href="#">위시리스트</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link" href="#">로그아웃</a>
				</li>
			</ul>
		</div>
	</header>

	<!-- Search Wrapper Area Start -->
	<div class="search-wrapper section-padding-100">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="search-content"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Search Wrapper Area End -->

	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="img/core-img/logo.png" alt="" /></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>



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
						<hr>
						<li><a href="스케줄만_등록.jsp">등록</a></li>
						<li><a href="전체스케줄목록.jsp">전체 스케줄 목록</a></li>

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
						<hr>
						<li><a href="일정등록4번.jsp">등록</a></li>
						<li><a href="#">전체 일정 목록</a></li>
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
						<hr>
						<li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
						<li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
						<li><a href="#">전체 할 일 목록</a></li>

					</ul>
				</div>
			</div>
		</div>

		<div style="width: 60%; margin-top: 180px; margin-left: 300px;">

			<h1 style="text-align: center;">
				할 일 목록 <i class="fas fa-solid fa-list-ul"></i>
			</h1>
			<br>
			<div class="container">
			<c:set value="<%= (currentPage-1)*10%>" var="j" />
				<table
					class="table table-bordered table-hover table-sm text-center ">


					<thead class="table-warning ">

						<th class="text-center">선택</th>
						<th class="text-center">No.</th>
						<th class="text-center">스케줄명</th>
						<th class="text-center">할 일 날짜</th>
						<th class="text-center">할 일 제목</th>
						<th class="text-center">할 일 체크</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="i" items="${todolist }">
							<tr>
								<td><div class="form-check">
										<input class="form-check-input" type="check"
											name="flexRadioDefault" id="flexRadioDefault1"> <label
											class="form-check-label" for="flexRadioDefault1"> </label>
									</div></td>
								<td><input value="${i.todo_num }" style="display: none;"
									name="num"> <input value="${i.member_nick }"
									style="display: none;" name="nick"> ${j =j+ 1}</td>
								<td>${schedule.schedule_name }</td>
								<td>${i.todo_date }</td>								
								<td>${i.todo_title }</td>
								<c:choose>
									<c:when test="${i.todo_check ==1}">
										<td><input class="myCheck" type="checkbox" id="${i.todo_num}" name="checkbox" value="${i.todo_num}" checked></td>
									</c:when>
									<c:otherwise>
										<td><input class="myCheck"  type="checkbox" id="${i.todo_num}" name="checkbox" value="${i.todo_num}"></td>
									</c:otherwise>
								</c:choose>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<br>
			<div class="text-center" style="padding-left: 36%">
				<a href="#" class="btn btn-primary">목록 보기</a>
			</div>
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
