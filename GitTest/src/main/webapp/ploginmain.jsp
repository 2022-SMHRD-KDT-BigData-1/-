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
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

<link href="assets/css/style.css" rel="stylesheet">


<link rel="stylesheet" href="캐러셀/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="캐러셀/css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="캐러셀/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="캐러셀/css/style.css" type="text/css" />
</head>

<body>
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
				<c:choose>
					<c:when test="${member.member_id=='admin'}">
						<li><a class="nav-link scrollto" href="#"
							style="text-decoration: none">회원관리</a></li>
						<li><a class="nav-link scrollto" href="plogout.jsp"
							style="text-decoration: none">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li><a class="nav-link scrollto" href="#"
							style="text-decoration: none">사이트 소개</a></li>
						<li></li>
						<div class="dropdown nav-item active">
							<a style="text-decoration: none"
								class="nav-link dropdown-toggle" href="컨텐츠추천.jsp">컨텐츠
								추천</a>
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
							<a class="nav-link dropdown-toggle" href="mypg_main.jsp">마이페이지</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item" href="pupdate.jsp">회원정보 수정/탈퇴</a></li>
								<li><a class="dropdown-item" href="achieveall.jsp">전체
										학습상황 조회</a></li>
								<li><a class="dropdown-item" href="mybookwish.jsp">위시리스트</a></li>
							</ul>
						</div>
						<li class="nav-item active"><a class="nav-link" href="plogout.jsp">로그아웃</a>
						</li>
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
			</ul>
		</nav>
	</header>



	<br>
	<br>
	<br>

	<div class="cart-table-area section-padding-100">
		<div class="row py-5">
			<div class="container px-4" style="background-color: #45494c;">
				<br />
				<div class="text-center">
<!-- 					<h1 class="display-4 fw-bolder" style="color: white">P+</h1>-->
					<img
					style="width: 70px" src="image/p+만1.png">
 					<p class="lead fw-normal text-white-50 mb-0">Planner에
						Programming을 더하다</p>
				</div>
			</div>
		</div>
	</div>



	<!-- ======= 컨텐츠 추천  ======= -->


	<section id="about" class="about-mf sect-pt4 route">
		<div class="container">
			<div class="my-5 container">
				<div class="box-shadow-full">
					<div class="row mb-2">
						<h1>책 추천</h1>

						<!-- Categories Section Begin -->

						<div class="container">
							<div class="row">
								<div class="categories__slider owl-carousel">
									<c:choose>
										<c:when test="${empty member.user_type1 }">
											<c:choose>
												<c:when test="${empty recbooklist1}">
													<c:forEach var="book" items="${booklist }">
														<div class="col-lg-3">
															<div class="categories__item set-bg"
																style="height: 350px">
																<h5>
																	<a href="BookintCon?num=${book.book_num }"> <img
																		src="${book.book_img}" width="80"><span
																		style="display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${book.book_title }</span>
																	</a> <a href="WishCon.do?num=${book.book_num}&recbooknum=0">
																		<img src="heart0.png" style="width: 40px">
																	</a>
																</h5>
															</div>
														</div>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<c:forEach var="book" items="${booklist }">
														<c:set var="i" value="0" />
														<div class="col-lg-3">
															<div class="categories__item set-bg"
																style="height: 350px">
																<h5>
																	<c:forEach var="recbook" items="${recbooklist1 }">
																		<c:choose>
																			<c:when test="${book.book_num == recbook.book_num }">
																				<a href="BookintCon?num=${book.book_num }"> <img
																					src="${book.book_img}" width="80"><span
																					style="display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${book.book_title }</span>
																				</a>
																				<c:choose>
																					<c:when test="${recbook.contents_cnt == 1 }">
																						<a
																							href="WishCon.do?num=${recbook.book_num}&recbooknum=1">
																							<img src="heart1.png" style="width: 40px">
																						</a>
																						<c:otherwise>
																							<a
																								href="WishCon.do?num=${recbook.book_num}&recbooknum=0">
																								<img src="heart0.png" style="width: 40px">
																							</a>
																						</c:otherwise>
																					</c:when>
																				</c:choose>
																			</c:when>
																			<c:otherwise>
																				<c:set value="${i = i+1 }" var="i" />
																				<c:choose>
																					<c:when test="${fn:length(recbooklist1) == i}">
																						<a href="BookintCon?num=${book.book_num }"> <img
																							src="${book.book_img}" width="80"><span
																							style="display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${book.book_title }</span>
																						</a>
																						<a
																							href="WishCon.do?num=${book.book_num}&recbooknum=0">
																							<img src="heart0.png" style="width: 40px">
																						</a>
																					</c:when>
																				</c:choose>
																			</c:otherwise>
																		</c:choose>
																	</c:forEach>
																</h5>
															</div>
														</div>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</c:when>
										<c:otherwise>
											<c:forEach var="recbook" items="${recbooklist }">
												<div class="col-lg-3">
													<div class="categories__item set-bg" style="height: 350px">
														<h5>
															<a href="BookintCon?num=${recbook.book_num }"> <img
																src="${recbook.book_img}" width="80"> <span
																style="display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${recbook.book_title }</span></a>
															<c:choose>
																<c:when test="${recbook.contents_cnt==1 }">

																	<a
																		href="WishCon.do?num=${recbook.book_num}&recbooknum=${recbook.contents_cnt}">

																		<img src="heart1.png" style="width: 40px">

																	</a>
																</c:when>
																<c:otherwise>
																	<a
																		href="WishCon.do?num=${recbook.book_num}&recbooknum=${recbook.contents_cnt}">

																		<img src="heart0.png" style="width: 40px">

																	</a>
																</c:otherwise>
															</c:choose>
														</h5>
													</div>
												</div>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 영상 추천 -->
		<div class="container">
			<div class="my-5 container">
				<div class="box-shadow-full">
					<div class="row mb-2">
						<h1>영상 추천</h1>
						<div class="container" style="padding-top: 50px">
							<div class="row">
								<div class="categories__slider owl-carousel">
									<c:choose>
										<c:when test="${empty member.user_type1 }">
											<c:choose>
												<c:when test="${empty recvideolist1}">
													<c:forEach var="video" items="${videolist }">
														<div class="col-lg-3">
															<div class="categories__item set-bg"
																style="height: 180px">
																<h5>
																	<a href="VideointCon?num=${video.video_num}"> <img
																		src="${video.video_thumbnail}" width="80"><span
																		style="display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${video.video_title }</span>
																	</a> <a
																		href="WishVideoCon.do?num=${video.video_num}&recvideonum=0">
																		<img src="heart0.png" style="width: 40px">
																	</a>
																</h5>
															</div>
														</div>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<c:forEach var="video" items="${videolist }">
														<c:set var="i" value="0" />
														<div class="col-lg-3">
															<div class="categories__item set-bg"
																style="height: 180px">
																<h5>
																	<c:forEach var="recvideo" items="${recvideolist1 }">
																		<c:choose>
																			<c:when
																				test="${video.video_num == recvideo.video_num }">
																				<c:choose>
																					<c:when test="${recvideo.contents_cnt == 1 }">
																						<a
																							href="WishVideoCon.do?num=${recvideo.video_num}&recvideonum=1">
																							<img src="heart1.png" style="width: 40px">
																						</a>
																						<c:otherwise>
																							<a
																								href="WishVideoCon.do?num=${recvideo.video_num}&recvideonum=0">
																								<img src="heart0.png" style="width: 40px">
																							</a>
																						</c:otherwise>
																					</c:when>
																				</c:choose>
																			</c:when>
																			<c:otherwise>
																				<c:set value="${i = i+1 }" var="i" />
																				<c:choose>
																					<c:when test="${fn:length(recvideolist1) == i}">
																						<a href="VideointCon?num=${video.video_num}">
																							<img src="${video.video_thumbnail}" width="80"><span
																							style="display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${video.video_title }</span>
																						</a>
																						<a
																							href="WishVideoCon.do?num=${video.video_num}&recvideonum=0">
																							<img src="heart0.png" style="width: 40px">
																						</a>
																					</c:when>
																				</c:choose>
																			</c:otherwise>
																		</c:choose>
																	</c:forEach>
																</h5>
															</div>
														</div>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</c:when>

										<c:otherwise>

											<c:forEach var="recvideo" items="${recvideolist }">

												<div class="col-lg-3">
													<div class="categories__item set-bg" style="height: 180px">

														<h5>
															<a href="VideointCon?num=${recvideo.video_num}"> <img
																src="${recvideo.video_thumbnail}" width="80"> <span
																style="display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${recvideo.video_title }</span>
															</a>
															<c:choose>
																<c:when test="${recvideo.contents_cnt==1 }">

																	<a
																		href="WishVideoCon.do?num=${recvideo.video_num}&recvideonum=${recvideo.contents_cnt}">

																		<img src="heart1.png" style="width: 40px">

																	</a>
																</c:when>
																<c:otherwise>
																	<a
																		href="WishVideoCon.do?num=${recvideo.video_num}&recvideonum=${recvideo.contents_cnt}">

																		<img src="heart0.png" style="width: 40px">

																	</a>
																</c:otherwise>
															</c:choose>
														</h5>

													</div>
												</div>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- 컨텐츠 추천 끝나는 부분 -->





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
</body>
</html>