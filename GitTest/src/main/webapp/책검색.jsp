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
<link rel="stylesheet" href="css/core-style.css"/>
<link rel="stylesheet" href="style.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" />


<style>
body {
    background: #d1d5db
}
.height {
	height: 100vh
}

.form {
	position: relative
}

.form .fa-search {
	position: absolute;
	top: 20px;
	left: 20px;
	color: #9ca3af
}

.form span {
	position: absolute;
	right: 17px;
	top: 13px;
	padding: 2px;
	border-left: 1px solid #d1d5db
}

.left-pan {
	padding-left: 7px
}

.left-pan i {
	padding-left: 10px
}

.form-input {
	height: 55px;
	text-indent: 33px;
	border-radius: 10px
}

.form-input:focus {
	box-shadow: none;
	border: none
}
</style>



</head>

<body>

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
				<li class="nav-item active"><a class="nav-link" href="#">����Ʈ
						�Ұ�</a></li>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="��������õ.jsp">������ ��õ</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">���� Ȯ�� �� ��˻�</a></li>
						<li><a class="dropdown-item" href="#">å �˻�</a></li>
					</ul>
				</div>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="�н��÷���.jsp">�н��÷���</a> <span
						class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="dropdown-header">������</li>
						<hr>
						<li><a href="�����ٸ�_���.jsp">���</a></li>
						<li><a href="��ü�����ٸ��.jsp">��ü ������ ���</a></li>
						<li><a href="��ü�����͸��.jsp">��ü ������ ���</a></li>
						<li><a href="��ü�ϱ���.jsp">��ü �ϱ� ���</a></li>
						<br>
						<li class="divider"></li>
						<li class="dropdown-header">����</li>
						<hr>
						<li><a href="�������4��.jsp">���</a></li>
						<li><a href="#">��ü ���� ���</a></li>
						<li><a href="��ü�����͸��.jsp">��ü ������ ���</a></li>
						<li><a href="��ü�ϱ���.jsp">��ü �ϱ� ���</a></li>
					</ul>
				</div>

				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">��Ʈ������</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="��������ҽ�����.jsp">���</a></li>

						<li><a class="dropdown-item" href="�������.jsp">���</a></li>
					</ul>
				</div>

				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">����������</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">ȸ������ ����/Ż��</a></li>
						<li><a class="dropdown-item" href="#">��ü �н���Ȳ ��ȸ</a></li>
						<li><a class="dropdown-item" href="#">���ø���Ʈ</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link" href="#">�α׾ƿ�</a>
				</li>
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



		<div class="shop_sidebar_area" style="bg-color:#f5f7fa">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->
				<h6 class="widget-title mb-30">������ ��õ</h6>
				<hr>
				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li><a href="#">����Ȯ�� �� ��˻�</a></li>
						<li><a href="#">å �˻�</a></li>
					</ul>
				</div>
			</div>

		</div>

		<div class="container" style="bg-color:#fbb710">
			<div
				class="row height d-flex justify-content-center align-items-center">
				<div class="col-md-6">
					<div class="form">
						<i class="fa fa-search"></i> <input type="text"
							class="form-control form-input" placeholder="�������� �Է��ϼ���.">
						<div class="text-center"><span class="left-pan">
					<a href="#" class="btn" >�˻�</a>
				</span></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ##### Main Content Wrapper End ##### -->

	<!-- ##### Footer Area Start ##### -->


	<!-- Js Plugins -->
	<script src="ĳ����/js/jquery-3.3.1.min.js"></script>
	<script src="ĳ����/js/bootstrap.min.js"></script>
	<script src="ĳ����/js/jquery-ui.min.js"></script>
	<script src="ĳ����/js/jquery.slicknav.js"></script>
	<script src="ĳ����/js/mixitup.min.js"></script>
	<script src="ĳ����/js/owl.carousel.min.js"></script>
	<script src="ĳ����/js/main.js"></script>



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
