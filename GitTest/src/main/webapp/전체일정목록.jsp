<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

<link href="assets/css/style.css" rel="stylesheet">

</head>

<body>
	<header id="header" class="fixed-top header-scrolled">
		<nav id="navbar" class="navbar" style="justify-content: end">
			<a style="padding-right: 57%" href="#"><img style="width: 40px"
				src="image/p+만.png"></a>
			<ul style="padding-right: 30px">
				<li><a class="nav-link scrollto" href="#"
					style="text-decoration: none">사이트 소개</a></li>
				<li></li>
				<div class="dropdown nav-item active">
					<a style="text-decoration: none" class="nav-link dropdown-toggle"
						href="컨텐츠추천.jsp">컨텐츠 추천</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="ptype.jsp">유형 확인 및 재검사</a></li>
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
					<a class="nav-link dropdown-toggle" href="#">마이페이지</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="pupdate.jsp">회원정보
								수정/탈퇴</a></li>
						<li><a class="dropdown-item" href="achieveall.jsp">전체
								학습상황 조회</a></li>
						<li><a class="dropdown-item" href="#">위시리스트</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">로그아웃</a></li>


			</ul>
		</nav>
	</header>


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
						<hr />
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
						<hr />
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
						<hr />
						<li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
						<li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
						<li><a href="#">전체 할 일 목록</a></li>

					</ul>
				</div>
			</div>
		</div>

		<div style="width: 60%; margin-top: 180px; margin-left: 300px;">

			<h1 style="text-align: center;">
				일정 목록 <i class="fas fa-solid fa-clipboard-list"></i>
			</h1>
			<br>
			<div class="container">
				<table
					class="table table-bordered table-hover table-sm text-center ">


					<thead class="table-warning ">
						<th class="text-center">선택</th>
						<th class="text-center">No.</th>
						<th class="text-center">제목</th>
						<th class="text-center">작성일</th>

						</tr>
					</thead>

					<tbody>
						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>1</td>
							<td></td>
							<td>2022.02.21</td>

						</tr>

						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>2</td>
							<td></td>
							<td></td>

						</tr>

						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>3</td>
							<td></td>
							<td></td>

						</tr>

						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>4</td>
							<td></td>
							<td></td>

						</tr>

						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>5</td>
							<td></td>
							<td></td>

						</tr>
						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>6</td>
							<td></td>
							<td></td>

						</tr>

						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>7</td>
							<td></td>
							<td></td>

						</tr>

						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>8</td>
							<td></td>
							<td></td>

						</tr>

						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>9</td>
							<td></td>
							<td></td>

						</tr>
						<tr>
							<td>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div>
							</td>
							<td>10</td>
							<td></td>
							<td></td>

						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<div class="page">
				<div class="text-center">
					<a href="#" class="btn btn-dark">선택 완료</a>
				</div>
				<br>
				<nav aria-label="Page navigation example">
					<div class="text-center">
						<ul class="pagination" style="justify-content: center;">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
							</a></li>
						</ul>
					</div>
				</nav>
			</div>

		</div>



	</div>



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
