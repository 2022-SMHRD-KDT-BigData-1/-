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


<link rel="stylesheet" href="캐러셀/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="캐러셀/css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="캐러셀/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="캐러셀/css/style.css" type="text/css" />

<!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

	<header id="header" class="fixed-top header-scrolled">
		<nav id="navbar" class="navbar" style="justify-content: end">
			<a style="padding-right: 57%" href="ploginmain.jsp"><img
				style="width: 40px" src="image/p+만.png"></a>
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
		<div class="mobile-nav"></div>



		<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">





				<!-- ##### Single Widget ##### -->
				<div class="widget catagory mb-50">
					<h6 class="widget-title mb-30">책 상세소개</h6>
					<br>
					<!-- Widget Title -->
					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li style="color: #fbb710"><a
								href="bookint(content_rec).jsp">컨텐츠 추천</a></li>
							<li><a href="#">유형 확인 및 재검사</a></li>

						</ul>
					</div>
				</div>

				<!-- ##### Single Widget ##### -->
				<div class="widget category mb-50">
					<!-- Widget Title -->

					<div class="catagories-menu">
						<ul>
							<li class="active" style="color: #fbb710"><a>위시리스트</a></li>
							<hr />
							<li><a href="bookint(bookwish).jsp">책</a></li>
							<li><a href="bookint(videowish).jsp">영상</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="container p-5">
			<div class="cart-table-area section-padding-100">
				<div class="row py-5">
					<div class="container px-4" style="background-color: #45494c;">
						<br />
						<div class="text-center">
							<h2 class="display-4 fw-bolder"
								style="color: white; font-size: 40px; padding-bottom: 12px;">컴퓨터/IT
								> 컴퓨터공학 > 컴퓨터공학/과학개론</h2>
							<!--  <p class="lead fw-normal text-white-50 mb-0">Planner에
                  Programming을 더하다</p> -->
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-lg-12">
					<div class="cart-title mt-50">
						<h2>책 추천</h2>
					</div>


					<!-- ======= 컨텐츠 추천  ======= -->



					<div class="box-shadow-full">

						<!-- Categories Section Begin -->
						<div class="container">
							<div class="row">
								<div class="categories__slider owl-carousel">
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="image/1.jpg">

											<h5>
												<a href="#"></a>
											</h5>

										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="image/2.jpg">
											<h5>
												<a href="#"></a>
											</h5>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="image/3.jpg">
											<h5>
												<a href="#"></a>
											</h5>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="image/4.jpg">
											<h5>
												<a href="#"></a>
											</h5>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg"
											data-setbg="img/categories/cat-5.jpg">
											<h5>
												<a href="#">X</a>
											</h5>
										</div>
									</div>
								</div>
							</div>
						</div>



					</div>
				</div>
			</div>


			<!-- 영상 추천 -->


			<div class="row">
				<div class="col-12 col-lg-12">
					<div class="cart-title mt-50">
						<h2>영상 추천</h2>
					</div>

					<div class="box-shadow-full">

						<!-- Categories Section Begin -->
						<div class="container">
							<div class="row">
								<div class="categories__slider owl-carousel">
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="video/1.png">

											<h5>
												<a href="#">영상이름1</a>
											</h5>

										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="video/2.png">
											<h5>
												<a href="#">영상이름2</a>
											</h5>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="video/3.png">
											<h5>
												<a href="#">영상 이름3</a>
											</h5>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="video/4.png">
											<h5>
												<a href="#">영상 이름4</a>
											</h5>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg"
											data-setbg="img/categories/cat-5.jpg">
											<h5>
												<a href="#">X</a>
											</h5>
										</div>
									</div>
								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- 컨텐츠 추천 끝나는 부분 -->



	</div>
	</div>
	</div>
	</div>
	<!-- ##### Main Content Wrapper End ##### -->

	<!-- ##### Footer Area Start ##### -->


	<!-- Js Plugins -->
	<script src="캐러셀/js/jquery-3.3.1.min.js"></script>
	<script src="캐러셀/js/bootstrap.min.js"></script>
	<script src="캐러셀/js/jquery-ui.min.js"></script>
	<script src="캐러셀/js/jquery.slicknav.js"></script>
	<script src="캐러셀/js/mixitup.min.js"></script>
	<script src="캐러셀/js/owl.carousel.min.js"></script>
	<script src="캐러셀/js/main.js"></script>



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
	</div>
</body>
</html>
