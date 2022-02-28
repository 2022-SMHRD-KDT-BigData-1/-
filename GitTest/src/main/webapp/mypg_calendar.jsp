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
<title>P+(Programming�� Planner�� ���ϴ�.)</title>
<!-- Favicon  -->
<link rel="icon" href="image/p+��.png" />

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
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
	rel="stylesheet" type="text/css" />

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet" />
<link href="calendar/packages copy/core/main.css" rel="stylesheet" />
<link href="calendar/packages copy/daygrid/main.css" rel="stylesheet" />
<script src="calendar/packages copy/core/main.js"></script>
<script src="calendar/packages copy/interaction/main.js"></script>
<script src="calendar/packages copy/daygrid/main.js"></script>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		var calendarEl = document.getElementById("calendar");

		var event = {
			title : "�ڹ�",
			start : "2022-02-25",
			end : "2022-02-26"
		};
		var eventlist = [];
		eventlist.push(event);

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ "interaction", "dayGrid" ],
			locale : 'ko',

			editable : true,
			eventLimit : true, // allow "more" link when too many events
			events : eventlist
			/* [
			{
			title: "All Day Event",
			start: "2020-02-01",
			},
			{
			title: "Long Event",
			start: "2020-02-07",
			end: "2020-02-10",
			},
			{
			groupId: 999,
			title: "Repeating Event",
			start: "2020-02-09T16:00:00",
			},
			{
			groupId: 999,
			title: "Repeating Event",
			start: "2020-02-16T16:00:00",
			},
			{
			title: "Conference",
			start: "2020-02-11",
			end: "2020-02-13",
			},
			{
			title: "Meeting",
			start: "2020-02-12T10:30:00",
			end: "2020-02-12T12:30:00",
			},
			{
			title: "Lunch",
			start: "2020-02-12T12:00:00",
			},
			{
			title: "Meeting",
			start: "2020-02-12T14:30:00",
			},
			{
			title: "Happy Hour",
			start: "2020-02-12T17:30:00",
			},
			{
			title: "Dinner",
			start: "2020-02-12T20:00:00",
			},
			{
			title: "Birthday Party",
			start: "2020-02-13T07:00:00",
			},
			{
			title: "Click for Google",
			url: "http://google.com/",
			start: "2020-02-28",
			}, 
			]*/,
		});

		calendar.render();
	});
</script>
<style>
body {
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>


</head>

<body>
	<!-- ȸ��Ż�� Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">
						<!-- <i class="bi bi-exclamation-circle"></i> -->
						<i class="bi bi-exclamation-circle-fill"></i> ȸ�� Ż��
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
					ȸ��Ż�� �Ͻðڽ��ϱ�?</div>
				<br>

				<div class=" modal-footer ">
					<a href="#" class="btn btn-primary ">Ȯ��</a>
					</button>
				</div>
			</div>
		</div>
	</div>


	
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="image/p+��1.png" alt="" /></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<button type="button" class="btn" data-toggle="collapse"
					data-target="#demo" style="background-color: black">
					<span></span><span></span><span></span>
				</button>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="demo">
			<ul class="navbar-nav">

				<li clas="nav-item"><a class="nav-link" href="#">����Ʈ �Ұ�</a></li>
				<li clas="nav-item"><a class="nav-link" href="��������õ.jsp">������
						��õ</a></li>
				<li clas="nav-item"><a class="nav-link" href="plannermain.jsp">�н��÷���</a></li>
				<li clas="nav-item"><a class="nav-link" href="#">��Ʈ������</a></li>
				<li clas="nav-item"><a class="nav-link" href="mypg_main.jsp">����������</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">�α׾ƿ�</a></li>
			</ul>
		</div>
		<header id="header" class="fixed-top header-scrolled">
			<nav id="navbar" class="navbar">
				<a style="padding-left: 15px" href="ploginmain.jsp"><img
					style="width: 50px" src="image/p+��1.png"></a>
				<ul style="padding-right: 30px">
					<li><a class="nav-link scrollto" href="#"
						style="text-decoration: none">����Ʈ �Ұ�</a></li>
					<li></li>
					<div class="dropdown nav-item active">
						<a style="text-decoration: none" class="nav-link dropdown-toggle"
							href="��������õ.jsp">������ ��õ</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="ptype.jsp">���� Ȯ�� ��
									��˻�</a></li>
							<li><a class="dropdown-item" href="search1.jsp">å �˻�</a></li>
						</ul>
					</div>

					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="plannermain.jsp">�н��÷���</a>
						<span class="caret"></span>

						<ul class="dropdown-menu">
							<li class="dropdown-header">������</li>
							<hr>
							<li><a href="scheduleset.jsp">���</a></li>
							<li><a href="scheduleindex.jsp">��ü ������ ���</a></li>

							<br>
							<li class="divider"></li>
							<li class="dropdown-header">����</li>
							<hr>
							<li><a href="dayplantodayset.jsp">���</a></li>
							<li><a href="dayplantodayindex.jsp">��ü ���� ���</a></li>

							<br>
							<li class="divider"></li>
							<li class="dropdown-header">��ȸ</li>
							<hr>
							<li><a href="editorallindex.jsp">��ü ������ ���</a></li>
							<li><a href="diaryallindex.jsp">��ü �ϱ� ���</a></li>
							<li><a href="todoallindex.jsp">��ü �� �� ���</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="#">��Ʈ������</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="#">���</a></li>

							<li><a class="dropdown-item" href="#">���</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="mypg_main.jsp">����������</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="pupdate.jsp">ȸ������
									����/Ż��</a></li>
							<li><a class="dropdown-item" href="achieveall.jsp">��ü
									�н���Ȳ ��ȸ</a></li>
							<li><a class="dropdown-item" href="mybookwish.jsp">���ø���Ʈ</a></li>
						</ul>
					</div>
					<li class="nav-item active"><a class="nav-link"
						href="plogout.jsp">�α׾ƿ�</a></li>


				</ul>
			</nav>
		</header>

		<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->
				<h6 class="widget-title mb-30">����������</h6>

				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">ȸ�� ����</a></li>
						<hr />
						<li><a href="login-form-v2/Login_v2/ȸ������ ����.html">ȸ��
								���� ����</a></li>
						<a><li class="btn" data-bs-toggle="modal"
							data-bs-target="#staticBackdrop">ȸ�� Ż��</a>
						</li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">

				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">���ø���Ʈ</a></li>
						<hr />
						<li><a href="#">å</a></li>
						<li><a href="#">����</a></li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">

				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">��ü�н���Ȳ��ȸ</a></li>
						<hr />
						<li><a href="mypg_calendar.jsp">�޷� üũ</a></li>
						<li><a href="achieveall.jsp">��Ʈ</a></li>
						<li><a href="mypg_scheduleindex.jsp">��ü ������ ���</a></li>
						<li><a href="mypg_editorallindex.jsp">��ü ������ ���</a></li>
						<li><a href="mypg_diaryallindex.jsp">��ü �ϱ� ���</a></li>
					</ul>
				</div>


			</div>
		</div>
		<div style="width: 80%; padding-top: 100px; margin-left: 100px;">

			<!-- Option 1: Bootstrap Bundle with Popper -->
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>

			<!-- �޷� -->
			<div class="container">
				<div class="col-md-10">
					<div class="container col-md-6 p-3">
						<div class="row"></div>
					</div>
					<div id="calendar"></div>
				</div>
			</div>
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
