<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Amado - Furniture Ecommerce Template | Shop</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico" />

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css" />
<link rel="stylesheet" href="style.css" />

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

</head>

<body>
	<script src="jquery-3.6.0.min"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					if ("${serviceType}" == "wish") {
						$('input:radio[name="serviceType"][value="wish"]')
								.prop('checked', true);
						$("#viewsearch").hide();
						$("#viewuser").hide();
						$("#viewwish").show();
					}

					$("input[name='serviceType']:radio").change(function() {
						var serviceType = this.value;

						if (serviceType == "wish") {
							$("#viewsearch").hide();
							$("#viewuser").hide();
							$("#viewwish").show();
						} else if (serviceType == "search") {
							$("#viewsearch").show();
							$("#viewwish").hide();
							$("#viewuser").hide();
						} else if (serviceType == "user") {
							$("#viewuser").show();
							$("#viewsearch").hide();
							$("#viewwish").hide();
						}

					});
				});
	</script>
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">
						<!-- <i class="bi bi-exclamation-circle"></i> -->
						<i class="bi bi-exclamation-circle-fill"></i> 학습일 안내
					</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
            <path fill-rule="evenodd"
								d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z" />
            <path fill-rule="evenodd"
								d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z" />
          </svg>
					</button>
				</div>
				<br>
				<div class="modal-body text-center" style="font-size: 20px;">
					예상 학습일 30일 이상 90일 이하일 때 <br> 스케줄 등록 가능합니다. <br /> 다시 설정해 주세요
				</div>
				<br>

				<div class=" modal-footer ">
					<a href="#" class="btn btn-primary ">이전 페이지</a>
				</div>
			</div>
		</div>
	</div>


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
					<a class="nav-link dropdown-toggle" href="학습플래너.jsp">학습플래너</a> <span
						class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="dropdown-header">스케줄</li>
						<hr>
						<li><a href="스케줄만_등록.jsp">등록</a></li>
						<li><a href="전체스케줄목록.jsp">전체 스케줄 목록</a></li>
						<li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
						<li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
						<br>
						<li class="divider"></li>
						<li class="dropdown-header">일정</li>
						<hr>
						<li><a href="일정등록4번.jsp">등록</a></li>
						<li><a href="#">전체 일정 목록</a></li>
						<li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
						<li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
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

	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">

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

				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active">스케줄</li>
						<hr />
						<li><a href="scheduleset.jsp">스케줄 등록</a></li>
						<li><a href="scheduleindex.jsp">전체 스케줄 목록</a></li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">

				<!-- Widget Title -->

				<div class="catagories-menu">
					<ul>
						<li class="active">일정</li>
						<hr />
						<li><a href="dayplantodayset.jsp">일정 등록</a></li>
						<li><a href="dayplantodayinsex.jsp">전체 일정 목록</a></li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">

				<div class="catagories-menu">
					<ul>
						<li class="active">조회</a></li>
						<hr />


						<li><a href="editorindex.jsp">전체 에디터 목록</a></li>
						<li><a href="diaryindex.jsp">전체 일기 목록</a></li>
						<li><a href="todoindex.jsp">할 일 목록</a></li>
					</ul>
				</div>
			</div>
		</div>



		<div class="" style="width: 40%; margin-top: 100px; margin-left: 25%;">
			<h1>스케줄 등록</h1>
			<br>
			<!-- Option 1: Bootstrap Bundle with Popper -->
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>

			<div class="check">
				<div class="form-check">
					<input class="form-check-input " type="radio" value="wish"
						name="serviceType" checked="checked" id="flexRadioDefault1">
					<label class="form-check-label" for="flexRadioDefault1">
						위시리스트에서 찾기 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" value="search"
						name="serviceType" id="flexRadioDefault2"> <label
						class="form-check-label" for="flexRadioDefault2"> 전체 도서 검색
					</label> <br>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" value="user"
						name="serviceType" id="flexRadioDefault3"> <label
						class="form-check-label" for="flexRadioDefault3"> 보유 도서 정보
						입력 </label> <br>
				</div>
			</div>
			<br>
			<hr>
			<br>
			<div class="container">

				<form action="ScheduleCon.do" method="post">
				<h3 style="font-weight: bold;">학습할 책</h3>
					<span id="viewwish"> 위시리스트에서 찾기 : 
					
					<div class="input-group mb-3">
					<input type="text" class="form-control" aria-label="bookname" aria-describedby="button-addon2"
						id="wishbook_title" name="wishbook_title" onclick="mybook()"
						placeholder="내 위시리스트" class="btn btn-dark">
					</div>
						<input type="button"
						value="내 위시리스트" onclick="mybook()">
						
						<br> 
						<input
						type="text" id="wishbook_num" style="display: none;"
						name="wishbook_num"> 
						<input type="text" id="wishbook_page"
						style="display: none;" name="wishbook_page"> 제목 : <input
						type="text" name="title"> <br> 시작일 : <input
						type="date" name="start" id="Date1" onchange="call()" value="">
						~ 종료일 : <input type="date" name="end" id="Date2" onchange="call()"
						value="">
						<p></p> 일차이 계산 : <input type="text" id="day1" size="6"
						style="text-align: center;" name="day" readonly="readonly">

						<input type="submit" value="등록">
					</span>
				</form>



				<form action="#" method="get" role="form">
					<h3 style="font-weight: bold;">학습할 책</h3>
					<!-- <hr /> -->
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="책 제목을 입력하세요."
							aria-label="bookname" aria-describedby="button-addon2" /> <a
							href="#" class="btn btn-dark">검색</a>
					</div>

					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="위시리스트에서 찾기"
							aria-label="wishlist" aria-describedby="button-addon2" /> <a
							href="#" class="btn btn-dark">위시리스트</a>
					</div>

					<br>
					<hr>
					<br>

					<h3 style="font-weight: bold;">스케줄 설정</h3>
					<input type="text" class="form-control"
						placeholder="스케줄 이름을 입력하세요." /> <br> 학습 시작일 <input
						type="date" class="form-control" placeholder="date input" /> <br>
					학습 종료일 <input type="date" class="form-control"
						placeholder="date input" /> <br> 예상 학습일 수 <input type="text"
						class="form-control" placeholder="" /> <br>

					<div class="text-center">
						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#staticBackdrop">스케줄
							등록</button>

					</div>
			</div>
			</form>
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
