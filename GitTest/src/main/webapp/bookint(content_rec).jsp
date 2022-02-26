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


<link rel="stylesheet" href="ĳ����/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="ĳ����/css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="ĳ����/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="ĳ����/css/style.css" type="text/css" />

<!-- ��ܹ� css -->
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

	<header id="header" class="fixed-top header-scrolled">
		<nav id="navbar" class="navbar" style="justify-content: end">
			<a style="padding-right: 57%" href="ploginmain.jsp"><img
				style="width: 40px" src="image/p+��.png"></a>
			<ul style="padding-right: 30px">
				<li><a class="nav-link scrollto" href="#"
					style="text-decoration: none">����Ʈ �Ұ�</a></li>
				<li></li>
				<div class="dropdown nav-item active">
					<a style="text-decoration: none" class="nav-link dropdown-toggle"
						href="��������õ.jsp">������ ��õ</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="ptype.jsp">���� Ȯ�� �� ��˻�</a></li>
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
					<a class="nav-link dropdown-toggle" href="#">����������</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="pupdate.jsp">ȸ������
								����/Ż��</a></li>
						<li><a class="dropdown-item" href="achieveall.jsp">��ü
								�н���Ȳ ��ȸ</a></li>
						<li><a class="dropdown-item" href="#">���ø���Ʈ</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">�α׾ƿ�</a></li>


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
					<h6 class="widget-title mb-30">å �󼼼Ұ�</h6>
					<br>
					<!-- Widget Title -->
					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li style="color: #fbb710"><a
								href="bookint(content_rec).jsp">������ ��õ</a></li>
							<li><a href="#">���� Ȯ�� �� ��˻�</a></li>

						</ul>
					</div>
				</div>

				<!-- ##### Single Widget ##### -->
				<div class="widget category mb-50">
					<!-- Widget Title -->

					<div class="catagories-menu">
						<ul>
							<li class="active" style="color: #fbb710"><a>���ø���Ʈ</a></li>
							<hr />
							<li><a href="bookint(bookwish).jsp">å</a></li>
							<li><a href="bookint(videowish).jsp">����</a></li>
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
								style="color: white; font-size: 40px; padding-bottom: 12px;">��ǻ��/IT
								> ��ǻ�Ͱ��� > ��ǻ�Ͱ���/���а���</h2>
							<!--  <p class="lead fw-normal text-white-50 mb-0">Planner��
                  Programming�� ���ϴ�</p> -->
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-lg-12">
					<div class="cart-title mt-50">
						<h2>å ��õ</h2>
					</div>


					<!-- ======= ������ ��õ  ======= -->



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


			<!-- ���� ��õ -->


			<div class="row">
				<div class="col-12 col-lg-12">
					<div class="cart-title mt-50">
						<h2>���� ��õ</h2>
					</div>

					<div class="box-shadow-full">

						<!-- Categories Section Begin -->
						<div class="container">
							<div class="row">
								<div class="categories__slider owl-carousel">
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="video/1.png">

											<h5>
												<a href="#">�����̸�1</a>
											</h5>

										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="video/2.png">
											<h5>
												<a href="#">�����̸�2</a>
											</h5>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="video/3.png">
											<h5>
												<a href="#">���� �̸�3</a>
											</h5>
										</div>
									</div>
									<div class="col-lg-3">
										<div class="categories__item set-bg" data-setbg="video/4.png">
											<h5>
												<a href="#">���� �̸�4</a>
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



		<!-- ������ ��õ ������ �κ� -->



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
