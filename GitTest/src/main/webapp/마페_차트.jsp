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
<title>Amado - Furniture Ecommerce Template | Shop</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico" />

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css" />
<link rel="stylesheet" href="style.css" />

<title>Hello, world!</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">

<link href="css/전체조회.css" rel="stylesheet" />


<!-- Option 2: Separate Popper and Bootstrap JS -->

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

<!-- 차트 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

</head>

<body>
	<header
      class="navbar navbar-expand navbar-dark bg-dark bd-navbar fixed-top"
    >
      <a class="navbar-brand" href="#">P+</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">사이트 소개</a>
          </li>
          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="컨텐츠추천.jsp" >컨텐츠 추천</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="#">유형 확인 및 재검사</a>
              </li>
            </ul>
          </div>
          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="plannermain.jsp" >학습플래너</a>
            <span class="caret"></span></button>
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
            <a class="nav-link dropdown-toggle" href="#" >포트폴리오</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="포폴등록할스케줄.jsp">등록</a>
              </li>
              
              <li>
                <a class="dropdown-item" href="포폴목록.jsp">목록</a>
              </li>
            </ul>
          </div>

          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="#" >마이페이지</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="#">회원정보 수정/탈퇴</a>
              </li>
              <li>
                <a class="dropdown-item" href="#">전체 학습상황 조회</a>
              </li>
              <li>
                <a class="dropdown-item" href="#">위시리스트</a>
              </li>
            </ul>
          </div>
          <li class="nav-item active">
            <a class="nav-link" href="#">로그아웃</a>
          </li>
        </ul>
      </div>
    </header>
	<!-- 회원탈퇴 Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">
						<i class="bi bi-exclamation-circle-fill"></i> 회원 탈퇴
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
					회원탈퇴 하시겠습니까?</div>
				<br>

				<div class=" modal-footer ">
					<a href="#" class="btn btn-primary ">확인</a>
					</button>
				</div>
			</div>
		</div>
	</div>


	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav"></div>

		<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->
				<h6 class="widget-title mb-30">마이페이지</h6>

				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">회원 정보</a></li>
						<hr />
						<li><a href="login-form-v2/Login_v2/회원정보 수정.html">회원 정보
								수정</a></li>
						<a><li class="btn" data-bs-toggle="modal"
							data-bs-target="#staticBackdrop">회원 탈퇴</a>
						</li>
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
						<li class="active"><a href="#">위시리스트</a></li>
						<hr />
						<li><a href="#">책</a></li>
						<li><a href="#">영상</a></li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">전체학습상황조회</a></li>
						<hr />
						<li><a href="#">달력 체크</a></li>
						<li><a href="#">차트</a></li>
						<li><a href="#">전체 스케줄 목록</a></li>
						<li><a href="#">전체 에디터 목록</a></li>
						<li><a href="#">전체 일기 목록</a></li>
					</ul>
				</div>
			</div>
		</div>


		<div style="width: 80%; margin-top: 10%; margin-left: 70px;">
			<!---달성률-->
			<div style="padding-left: 10%">
				<div id="goal">
					<h1 id="goal-chart">[ 달성률 ]</h1>
					<br />
					<div class="container">
						<div class="row">
							<div class="col-md-2 col-sm-6 col-xs-12">
								<div class="demo1 font-weight:bold" data-percent="93"></div>
								<h3 class="sc-name">자바</h3>
							</div>

							<div class="col-md-2 col-sm-6 col-xs-12">
								<div class="demo2" data-percent="65"></div>
								<h3 class="sc-name">파이썬</h3>
							</div>

							<div class="col-md-2 col-sm-6 col-xs-12">
								<div class="demo3" data-percent="58"></div>
								<h3 class="sc-name">html</h3>
							</div>

							<div class="col-md-2 col-sm-6 col-xs-12">
								<div class="demo4" data-percent="45"></div>
								<h3 class="sc-name">크롤링</h3>
							</div>
						</div>
					</div>

					<script
						src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
					<script src="js/jquery.circlechart.js"></script>

					<script type="text/javascript">
						$(".demo1").percentcircle({
							animate : true,
							diameter : 100,
							guage : 2,
							coverBg : "#fff",
							bgColor : "#efefef",
							fillColor : "#B284BE",
							percentSize : "15px",
							percentWeight : "normal",
						});

						$(".demo2").percentcircle({
							animate : true,
							diameter : 100,
							guage : 2,
							coverBg : "#fff",
							bgColor : "#efefef",
							fillColor : "#7C0A02",
							percentSize : "15px",
							percentWeight : "normal",
						});

						$(".demo3").percentcircle({
							animate : true,
							diameter : 100,
							guage : 2,
							coverBg : "#fff",
							bgColor : "#efefef",
							fillColor : "#4AFF00",
							percentSize : "15px",
							percentWeight : "normal",
						});

						$(".demo4").percentcircle({
							animate : true,
							diameter : 100,
							guage : 2,
							coverBg : "#fff",
							bgColor : "#efefef",
							fillColor : "#1DACD6",
							percentSize : "15px",
							percentWeight : "normal",
						});
					</script>
				</div>
			</div>

			<!--------학습일------------>
			<div>
				<div style="padding-top: 100px">
					<h1 id="date" style="padding-left: 20%">[ 학습일 ]</h1>
					<canvas id="horizontalBar" width="600vw" height="400vh"></canvas>
				</div>
				<script>
					new Chart(document.getElementById("horizontalBar"), {
						type : "horizontalBar",
						data : {
							labels : [ "자바", "파이썬", "html", "크롤링" ],
							datasets : [
									{
										//   label: "My First Dataset",
										data : [ 86, 53, 68, 38 ],
										fill : false,
										backgroundColor : [
												"rgba(255, 99, 132, 0.2)",
												"rgba(153, 102, 255, 0.2)",
												"rgba(255, 205, 86, 0.2)",
												"rgba(75, 192, 192, 0.2)", ],
										borderColor : [ "rgb(255, 99, 132)",
												"rgb(153, 102, 255)",
												"rgb(255, 205, 86)",
												"rgb(75, 192, 192)", ],
										borderWidth : 2,
									}, ],
						},
						options : {
							responsive : false,
							scales : {
								xAxes : [ {
									ticks : {
										beginAtZero : true,
									},
								}, ],
							},
							// 범례 제거
							legend : {
								display : false,
							},
						},
					});
				</script>
			</div>


			<!--에디터,일기-->
			<div class="container" id="ed">
				<div class="ed-col-md-6">

					<h1 id="edi">[ 에디터&일기 현황 ]</h1>
					<div class="card">
						<div class="card-body">

							<canvas class="myChart chartjs-render-monitor"
								style="display: block; height: 360px; width: 554px;"></canvas>
						</div>
					</div>
				</div>
			</div>

			<!-- 차트 -->
			<script>
				const mydata = [ 94, 63, 75, 44 ];
				const mydataHalf = [ 73, 42, 53, 18 ];
				var ctx = document.getElementsByClassName("myChart");

				var mixedChart = {
					type : "bar",
					labels : [ "자바", "파이썬", "html", "크롤링" ],
					datasets : [ {
						label : "에디터",
						data : mydata,
						backgroundColor : "rgba(256, 0, 0, 0.1)",
					}, {
						label : "일기",
						data : mydataHalf,
						backgroundColor : "transparent",
						borderColor : "skyblue",
						type : "line",
					}, ],
				};
				var myChart = new Chart(ctx, {
					type : "bar",
					data : mixedChart,
					options : {
						tooltips : {
							titleFontSize : 10,
							bodyFontSize : 10,
						},
						legend : {
							display : true,
						},
					},
				});
			</script>
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
