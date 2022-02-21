<%@page import="com.pplus.model.VideoDTO"%>
<%@page import="com.pplus.model.BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="com.pplus.model.VideoDAO"%>
<%@page import="com.pplus.model.BookDAO"%>
<%@page import="com.pplus.model.PMemberDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");

PMemberDAO dao = new PMemberDAO();
BookDAO bookDao = new BookDAO();
VideoDAO videoDao = new VideoDAO();
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
ArrayList<BookDTO> booklist = null;
ArrayList<VideoDTO> videolist = null;
booklist = bookDao.bookSelectAll(array);
videolist = videoDao.videoSelectAll(array);
pageContext.setAttribute("booklist", booklist);
pageContext.setAttribute("videolist", videolist);
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>P+(Planner�� Programming�� ���ϴ�</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<link
	href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="ĳ����/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="ĳ����/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="ĳ����/css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="ĳ����/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="ĳ����/css/style.css" type="text/css" />


</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container d-flex justify-content-end">
			<nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto active" href="#hero"></a></li>
					<li><a class="nav-link scrollto" href="#"
						style="text-decoration: none">����Ʈ �Ұ�</a></li>
					<li><a class="nav-link scrollto" href="plogin.jsp"
						style="text-decoration: none">�α���</a></li>
					<li><a class="nav-link scrollto" href="pjoin.jsp"
						style="text-decoration: none">ȸ������</a></li>
				</ul>
			</nav>
		</div>
	</header>



	<div id="hero" class="hero route bg-image"
		style="background-image: url(assets/img/main.jpg)">

		<div class="overlay-itro"></div>
		<div class="hero-content display-table">
			<div class="table-cell">
				<div class="container">
					<h1 class="hero-title mb-4">P+</h1>
					<p class="hero-subtitle">
						<span class="typed" data-typed-items="Planner�� Programming�� ���ϴ�"></span>
					</p>
				</div>
			</div>
		</div>
	</div>

	<main id="main">

		<!-- ======= ������ ��õ  ======= -->
		<section id="about" class="about-mf sect-pt4 route">
			<div class="container">
				<div class="my-5 container">
					<div class="box-shadow-full" style="padding:5rem">
						<div class="row mb-2">
							<h1>å ��õ</h1>

							<!-- Categories Section Begin -->

							<div class="container">
								<div class="row">
									<div class="categories__slider owl-carousel">
										<c:forEach var="book" items="${booklist }">
											<td></td>
											<div class="col-lg-3">
												<div class="categories__item1 set-bg" style="heigh:350px">

													<h5>
														<a href="BookintCon?num=${book.book_num }"> <img
															src="${book.book_img}" width="60"> <span style="display:block; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">${book.book_title }</span>
														</a>
													</h5>

												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- ���� ��õ -->
			<div class="container">
				<div class="my-5 container">
					<div class="box-shadow-full" style="padding:5rem">
						<div class="row mb-2">
							<h1>���� ��õ</h1>
							<div class="container" >
								<div class="row">
									<div class="categories__slider owl-carousel">

										<c:forEach var="video" items="${videolist }">

											<div class="col-lg-3">
												<div class="categories__item set-bg" style="heigh:200px">

													<h5>
														<a href="VideointCon?num=${video.video_num}"> <img
															src="${video.video_thumbnail}" width="80"> <span style="display:block; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">${video.video_title }</span>
														</a>

													</h5>

												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
		</section>
		<!-- ������ ��õ ������ �κ� -->






		<div id="preloader"></div>
		<a href="#"
			class="back-to-top d-flex align-items-center justify-content-center"><i
			class="bi bi-arrow-up-short"></i></a>

		<!-- Vendor JS Files -->
		<script src="assets/vendor/purecounter/purecounter.js"></script>
		<script src="assets/vendor/aos/aos.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
		<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
		<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
		<script src="assets/vendor/typed.js/typed.min.js"></script>
		<script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
		<script src="assets/vendor/php-email-form/validate.js"></script>

		<!-- Template Main JS File -->
		<script src="assets/js/main.js"></script>


		<!-- Js Plugins -->
		<script src="ĳ����/js/jquery-3.3.1.min.js"></script>
		<script src="ĳ����/js/bootstrap.min.js"></script>
		<script src="ĳ����/js/jquery.nice-select.min.js"></script>
		<script src="ĳ����/js/jquery-ui.min.js"></script>
		<script src="ĳ����/js/jquery.slicknav.js"></script>
		<script src="ĳ����/js/mixitup.min.js"></script>
		<script src="ĳ����/js/owl.carousel.min.js"></script>
		<script src="ĳ����/js/main.js"></script>
</body>

</html>