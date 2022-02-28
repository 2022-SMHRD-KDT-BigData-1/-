<%@page import="com.pplus.model.TodoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.TodoDAO"%>
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

int pageSize = 5;
String pageNum = request.getParameter("pageNum");

if (pageNum == null) {
	pageNum = "1";
}

int currentPage = Integer.parseInt(pageNum);

int startRow = (currentPage - 1) * pageSize + 1;
int endRow = currentPage * pageSize;

int count = 0;
count = todoDAO.getCount(schedule.getSchedule_num());

if (count > 0) {
	todolist = todoDAO.getTodayList(startRow, endRow, member, schedule);
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
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />



<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>

<style>
ul {
	margin: 0;
	padding: 0;
}

hr {
	margin: 0;
}
</style>
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
				<!-- Widget Title -->


				<!-- ##### Single Widget ##### -->
				<div class="widget catagory mb-50">
					<!-- Widget Title -->

					<h6 class="widget-title mb-30">스케줄</h6>

					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li class="active"><a></a></li>
							<li><a href="schedule.jsp">달력</a></li>
							<hr />
						</ul>
					</div>
				</div>

				<!-- ##### Single Widget ##### -->
				<div class="widget catagory mb-50">
					<!-- Widget Title -->
					<!-- <h6 class="widget-title mb-30">스케줄</h6> -->

					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li class="active"><a>에디터</a></li>
							<hr>
							<li><a href="editorset.jsp">에디터 작성</a></li>
							<li><a href="editorindex.jsp">에디터 목록</a></li>
						</ul>

					</div>
				</div>

				<!-- ##### Single Widget ##### -->
				<div class="widget category mb-50">

					<!-- Widget Title -->

					<div class="catagories-menu">
						<ul>
							<li class="active"><a>일기</a></li>
							<hr>
							<li><a href="diaryset.jsp">작성</a></li>
							<li><a href="diaryindex.jsp">일기 목록</a></li>
						</ul>
					</div>

					<div class="widget catagory mb-50">
						<div class="catagories-menu">
							<ul>
								<li class="active"><a>오늘 할 일</a></li>
								<hr>
								<li><a href="todoset.jsp">작성</a></li>
								<li><a href="todoindex.jsp">오늘 할 일 목록</a></li>
							</ul>
						</div>
					</div>


					<div class="catagories-menu">
						<ul>
							<li class="active"><a></a></li>
							<li><a href="achieve.jsp">학습진행상황</a></li>
							<hr />
						</ul>

					</div>

				</div>
			</div>
		</div>
		<div
			style="width: 80%; margin: 50px; margin-bottom: 10%; margin-top: 50px; margin-left: 96px;">
			<br>

			<div class="cart-table-area section-padding-100"
				style="padding-bottom: padding-bottom: 94px; margin-left: 20px; margin-top: -65px;">
				<div class="row my-5 py-5">
					<div class="container px-4"
						style="background-color: #656166; width: 40%;">
						<br />
						<div class="text-center">
							<h1 class="display-4 fw-bolder" style="color: white">2022.01.11</h1>
							<p class="lead fw-normal text-white-50 mb-0">
								<!-- Planner에 Programming을 더하다 -->
							</p>
						</div>
					</div>
				</div>
				<!-- ======= 일정 기록  ======= -->

				<div class="container">
					<div class="row">
						<div class="col">
							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h1 class="m-0 font-weight-bold text-primary text-center">study</h1>
								</div>
								<div class="card-body ">

									<h2 class="font-weight-bold">
										학습 중인 책 이름 : <span class="float-center">Java</span>
									</h2>

									<h2 class="font-weight-bold">
										남은 기간 : <span class="float-center">D-9</span>
									</h2>

									<h2 class="font-weight-bold">
										남은 분량 : <span class="float-center">165P</span>
									</h2>

									<h2 class="font-weight-bold">
										전체 페이지 : <span class="float-center">300P</span>
									</h2>


									<h2 class="font-weight-bold">
										하루 학습 분량 : <span class="float-center">15P</span>
									</h2>
								</div>
							</div>
						</div>

						<!--투두리스트-->
						<div class="col">
							<div class="container">
								<div
									class="row d-flex justify-content-center align-items-center h-100">
									<div class="col">
										<div class="card" id="list1"
											style="border-radius: .75rem; background-color: #eff1f2;">
											<div class="card-body py-4 px-4 px-md-5">

												<p class="h1 text-center mt-3 mb-4 pb-3 text-primary">
													<i class="fas fa-check-square me-1"></i> <u>TO Do List</u>
												</p>

												<div class="pb-2">
													<div class="card">
														<div class="card-body">
															<div class="d-flex flex-row align-items-center">
																<input type="text" class="form-control form-control-lg"
																	id="exampleFormControlInput1" placeholder="내용을 입력하세요.">
																<!-- <a href="#!" data-mdb-toggle="tooltip" title="Set due date"><i class="fas fa-calendar-alt fa-lg me-3"></i></a> -->
																<div>
																	<button type="button" class="btn btn-primary">등록</button>
																</div>
															</div>
														</div>
													</div>
												</div>

												<hr class="my-4">

												<ul
													class="list-group list-group-horizontal rounded-0 bg-transparent">
													<li
														class="list-group-item d-flex align-items-center ps-0 pe-3 py-1 rounded-0 border-0 bg-transparent">
														<div class="form-check">
															<input class="form-check-input me-0" type="checkbox"
																value="" id="flexCheckChecked1" aria-label="..." checked />
															<p class="lead fw-normal mb-0"
																style="display: inline-block;">
																157p 문제 1번 다시 풀어보기 <a href="#!" class="text-info"
																	data-mdb-toggle="tooltip" title="Edit todo"><i
																	class="fas fa-pencil-alt me-3"></i></a> <a href="#!"
																	class="text-danger" data-mdb-toggle="tooltip"
																	title="Delete todo"><i class="fas fa-trash-alt"></i></a>
															</p>
														</div>
													</li>

													<li
														class="list-group-item ps-3 pe-0 py-1 rounded-0 border-0 bg-transparent">
														<div class="d-flex flex-row justify-content-end mb-1">

														</div>
													</li>
												</ul>

												<ul
													class="list-group list-group-horizontal rounded-0 bg-transparent">
													<li
														class="list-group-item d-flex align-items-center ps-0 pe-3 py-1 rounded-0 border-0 bg-transparent">
														<div class="form-check">
															<input class="form-check-input me-0" type="checkbox"
																value="" id="flexCheckChecked1" aria-label="..." checked />
															<p class="lead fw-normal mb-0"
																style="display: inline-block;">
																반복문 관련 유튜브 강의 2개 보기 <a href="#!" class="text-info"
																	data-mdb-toggle="tooltip" title="Edit todo"><i
																	class="fas fa-pencil-alt me-3"></i></a> <a href="#!"
																	class="text-danger" data-mdb-toggle="tooltip"
																	title="Delete todo"><i class="fas fa-trash-alt"></i></a>
															</p>
														</div>
													</li>

													<li
														class="list-group-item ps-3 pe-0 py-1 rounded-0 border-0 bg-transparent">
														<div class="d-flex flex-row justify-content-end mb-1">

														</div>
													</li>
												</ul>

												<ul
													class="list-group list-group-horizontal rounded-0 bg-transparent">
													<li
														class="list-group-item d-flex align-items-center ps-0   rounded-0 border-0 bg-transparent">
														<div class="form-check">
															<input class="form-check-input me-0" type="checkbox"
																value="" id="flexCheckChecked1" aria-label="..." checked />
															<p class="lead fw-normal mb-0"
																style="display: inline-block;">
																짧은글 영타 연습 30분 하기 <a href="#!" class="text-info"
																	data-mdb-toggle="tooltip" title="Edit todo"><i
																	class="fas fa-pencil-alt me-3"></i></a> <a href="#!"
																	class="text-danger" data-mdb-toggle="tooltip"
																	title="Delete todo"><i class="fas fa-trash-alt"></i></a>
															</p>
														</div>
													</li>
												</ul>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
		<br />
		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
	</div>
	</div>

	<!-- ##### Footer Area Start ##### -->

	<!-- ##### Footer Area End ##### -->

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
