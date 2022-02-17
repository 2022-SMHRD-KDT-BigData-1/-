<%@page import="com.pplus.model.RecVideoDTO"%>
<%@page import="com.pplus.model.VideoDAO"%>
<%@page import="com.pplus.model.VideoDTO"%>
<%@page import="com.pplus.model.RecBookDAO"%>
<%@page import="com.pplus.model.RecBookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="com.pplus.model.BookDAO"%>
<%@page import="com.pplus.model.BookDTO"%>
<%@page import="com.pplus.model.PMemberDAO"%>
<%@page import="org.apache.tomcat.websocket.PerMessageDeflate"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");

PMemberDAO dao = new PMemberDAO();
BookDAO bookDao = new BookDAO();
VideoDAO videoDao = new VideoDAO();
RecBookDAO recDaobook = new RecBookDAO();
ArrayList<RecBookDTO> recbooklist = (ArrayList<RecBookDTO>) session.getAttribute("recbooklist");
ArrayList<RecVideoDTO> recvideolist = (ArrayList<RecVideoDTO>) session.getAttribute("recvideolist");

ArrayList<BookDTO> booklist = null;
ArrayList<VideoDTO> videolist = null;
// 로그인 
if (member != null) {
	if (member.getUser_type1() == null) {
		// 유형조사를 안했을 때
		int[] array = new int[12];
		Random rd = new Random();
		for (int a = 0; a <= array.length - 1; a++) {
	array[a] = rd.nextInt(877);
	for (int b = 0; b < a; b++) {
		if (array[b] == array[a]) {
			a--;
			break;
		}
	}
		}
		booklist = bookDao.bookSelectAll(array);
		videolist = videoDao.videoSelectAll(array);
		request.setAttribute("booklist", booklist);
		request.setAttribute("videolist", videolist);
	} else if (recbooklist != null) {
		// 로그인 유형조사 했을 때

	}
} else {
	// 로그인 안했을 떄
	int[] array = new int[12];
	Random rd = new Random();
	for (int a = 0; a <= array.length - 1; a++) {
		array[a] = rd.nextInt(877);
		for (int b = 0; b < a; b++) {
	if (array[b] == array[a]) {
		a--;
		break;
	}
		}
	}
	booklist = bookDao.bookSelectAll(array);
	videolist = videoDao.videoSelectAll(array);
	request.setAttribute("booklist", booklist);
	request.setAttribute("videolist", videolist);
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Amado - Furniture Ecommerce Template | Cart</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico" />

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css" />
<link rel="stylesheet" href="style.css" />




<link rel="stylesheet" href="캐러셀/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="캐러셀/css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="캐러셀/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="캐러셀/css/style.css" type="text/css" />
</head>

<body>

	<header
		class="navbar navbar-expand navbar-dark bg-dark bd-navbar fixed-top">
	<a class="navbar-brand" href="pmain2.jsp">P+</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse justify-content-end"
		id="navbarNav">
		<ul class="navbar-nav">
			<c:choose>
				<c:when test="${empty member}">
					<li class="nav-item active"><a class="nav-link" href="#">사이트
							소개</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="plogin.jsp">로그인</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="pjoin.jsp">회원가입</a></li>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${member.member_id=='admin'}">
							<li class="nav-item active"><a class="nav-link" href="#">회원관리</a></li>
							<li class="nav-item active"><a class="nav-link"
								href="plogout.jsp">로그아웃</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item active"><a class="nav-link" href="#">사이트
									소개</a></li>
							<div class="dropdown nav-item active">
								<a class="nav-link dropdown-toggle" class="nav-link" href="#">학습플래너</a>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="scheduleset.jsp">스케줄
											등록</a></li>
									<li><a class="dropdown-item" href="scheduleindex.jsp">스케줄
											목록</a></li>
									<li><a class="dropdown-item" href="dayplantodayset.jsp">일정
											등록</a></li>
									<li><a class="dropdown-item" href="lookup.jsp">일정 조회</a></li>
								</ul>
							</div>
							<div class="dropdown nav-item active">
								<a class="nav-link dropdown-toggle" href="#">마이페이지</a>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="#">회원정보 수정/탈퇴</a></li>
									<li><a class="dropdown-item" href="#">전체 학습상황 조회</a></li>
								</ul>
							</div>
							<li class="nav-item active"><a class="nav-link"
								href="mywish.jsp">위시리스트</a></li>
							<li class="nav-item active"><a class="nav-link"
								href="plogout.jsp">로그아웃</a></li>
							<c:choose>
								<c:when test="${empty member.user_type1}">
									<script>
										window
												.open("ptype2.jsp", "ptype",
														"width=800, height=300, left=100, top=50");
									</script>
								</c:when>
							</c:choose>

						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
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

		<!-- Header Area Start -->
		<header class="header-area clearfix"> <!-- Close Icon -->
		<div class="nav-close">
			<i class="fa fa-close" aria-hidden="true"></i>
		</div>
		<!-- Logo -->
		<div class="logo">
			<a href="index.html"></a>
		</div>
		<hr>
		<!-- Amado Nav --> <nav class="amado-nav navbar">
		<div class="sidebar" data-color="white" data-active-color="danger">
			<div class="sidebar-wrapper">
				<ul>
					<li>
						<div class="btn-group">
							<a class="dropdown-toggle" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false" href="#"> 컨텐츠 추천
							</a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="#">유형 확인 및 재검사</a>
							</div>
						</div>
					</li>

					<li>
						<div>
							<a href="학습플래너.html"> 학습플래너 </a>

						</div>
					</li>

					<li>
						<div class="btn-group">
							<a class="dropdown-toggle" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false" href="#"> 포트폴리오 </a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="#">등록</a> <a
									class="dropdown-item" href="#">목록</a>
							</div>
						</div>
					</li>

					<li>
						<div class="btn-group">
							<a class="dropdown-toggle" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false" href="#"> 위시리스트 </a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="#">책</a> <a class="dropdown-item"
									href="#">영상</a>
							</div>
						</div>
					</li>

					<li>
						<div class="btn-group">
							<a class="dropdown-toggle" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false" href="#"> 마이페이지 </a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenu">
								<a class="dropdown-item" href="#">회원정보 수정/탈퇴</a> <a
									class="dropdown-item" href="#">전체 학습상황 조회</a>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		</nav> <!-- Cart Menu -->
		<div class="cart-fav-search mb-100">
			<a href="cart.html" class="cart-nav"><img
				src="img/core-img/cart.png" alt="" /> Cart <span>(0)</span></a> <a
				href="#" class="fav-nav"><img src="img/core-img/favorites.png"
				alt="" /> Favourite</a>


		</div>
		</header>
		<!-- Header Area End -->

		<div class="cart-table-area section-padding-100">
			<div class="row py-5">
				<div class="container px-4" style="background-color: #656166;">
					<br />
					<div class="text-center">
						<h1 class="display-4 fw-bolder" style="color: white">P+</h1>
						<p class="lead fw-normal text-white-50 mb-0">Planner에
							Programming을 더하다</p>
					</div>
				</div>
			</div>
			<div class="container-fluid">
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
			</div>

			<!-- 영상 추천 -->

			<div class="container-fluid">
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

			<div class="cart-table clearfix"></div>
		</div>
	</div>
	</div>
	</div>
	</div>
	<!-- ##### Main Content Wrapper End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer_area clearfix">
	<div class="container">
		<div class="row align-items-center">
			<!-- Single Widget Area -->
			<div class="col-12 col-lg-4">
				<div class="single_widget_area">
					<!-- Logo -->
					<div class="footer-logo mr-50">
						<a href="index.html"><img src="img/core-img/logo2.png" alt="" /></a>
					</div>
					<!-- Copywrite Text -->
					<p class="copywrite">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						& Re-distributed by <a href="https://themewagon.com/"
							target="_blank">Themewagon</a>
					</p>
				</div>
			</div>
			<!-- Single Widget Area -->
			<div class="col-12 col-lg-8">
				<div class="single_widget_area">
					<!-- Footer Menu -->
					<div class="footer_menu">
						<nav class="navbar navbar-expand-lg justify-content-end">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#footerNavContent"
							aria-controls="footerNavContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fa fa-bars"></i>
						</button>
						<div class="collapse navbar-collapse" id="footerNavContent">
							<ul class="navbar-nav ml-auto">
								<li class="nav-item active"><a class="nav-link"
									href="index.html">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="shop.html">Shop</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="product-details.html">Product</a></li>
								<li class="nav-item"><a class="nav-link" href="cart.html">Cart</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="checkout.html">Checkout</a></li>
							</ul>
						</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!-- ##### Footer Area End ##### -->

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
