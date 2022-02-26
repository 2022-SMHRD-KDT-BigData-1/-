<%@page import="com.pplus.model.BookDAO"%>
<%@page import="com.pplus.model.BookDTO"%>
<%@page import="com.pplus.model.RecBookDTO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
BookDTO book = (BookDTO) session.getAttribute("book");
BookDAO bookDAO = new BookDAO();

String book_part1 = bookDAO.bookPart1(book.getUser_type1());
String book_part2 = bookDAO.bookPart2(book.getUser_type2());
String book_part3 = bookDAO.bookPart3(book.getUser_type3());
pageContext.setAttribute("book_part1", book_part1);
pageContext.setAttribute("book_part2", book_part2);
pageContext.setAttribute("book_part3", book_part3);
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


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet" />
<!--아이콘-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">

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
							<li><a href="ptype.jsp">유형 확인 및 재검사</a></li>

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





		<!-- Product Details Area Start -->
		<div class="single-product-area section-padding-100 clearfix">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mt-50">

								<li class="breadcrumb-item">컴퓨터/IT</li>
								<li class="breadcrumb-item">${book_part1}</li>
								<li class="breadcrumb-item">${book_part2}</li>
								<li class="breadcrumb-item active" aria-current="page">${book_part3}</li>
							</ol>
						</nav>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-lg-6">
						<div class="single_product_thumb">
							<div class="book_thumbnail">
								<img class="bk-img" src="${book.book_img }" alt="" />
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-5" style="padding-top: 60px">
						<div class="single_product_desc">
							<!-- Product Meta Data -->
							<div class="product-meta-data">
								<div class="line"></div>
								<h1 style="font-weight: 540">${book.book_title }</h1>
								</a>
							</div>

							<div class="short_overview my-5">
								<div class="product__details__text">
									<div class="book_description">
										<hr>
										<p>${book.book_description }</p>

										<div>
											<ul class="book_info">
												<li><b>저자</b> <span>${book.book_author }</span></li>
												<li><b>페이지 수</b> <span>${book.book_page }p</span></li>
												<li><b>가격</b> <span>${book.book_price }원</span></li>
												<li><b>ISBN</b> <span>${book.book_isbn }</span></li>

												<li><b>출판사</b> <span>${book.book_publisher }</span></li>
												<li><b>출간일</b> <span>${book.book_pubdate }</span></li>

											</ul>
										</div>
									</div>
								</div>
							</div>

							<!-- Add to Cart Form -->

							<div style="padding-left: 40%; padding-top: 30px;">
								<c:choose>
									<c:when test="${recbook.contents_cnt == 1 }">
										<a href="WishCon2.do?num=${book.book_num}&recbooknum=1">
											<button type="submit" name="addtocart" value="5"
												class="btn amado-btn">
												<i class="fas fa-heart"></i> 위시리스트
											</button>
										</a>
									</c:when>
									<c:otherwise>
										<a href="WishCon2.do?num=${book.book_num}&recbooknum=0">
											<button type="submit" name="addtocart" value="5"
												class="btn amado-btn">
												<i class="fas fa-heart"></i> 위시리스트
											</button>
										</a>
									</c:otherwise>
								</c:choose>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Product Details Area End -->
	</div>

	<!-- ##### Main Content Wrapper End ##### -->



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
