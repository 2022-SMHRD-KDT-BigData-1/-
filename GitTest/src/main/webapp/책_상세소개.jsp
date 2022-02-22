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


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet" />
<!--������-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
</head>

</head>

<body>

	<!-- Header Area Start -->
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
            <a class="nav-link" href="#">����Ʈ �Ұ�</a>
          </li>
          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="��������õ.jsp" >������ ��õ</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="#">���� Ȯ�� �� ��˻�</a>
              </li>
            </ul>
          </div>
          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="plannermain.jsp" >�н��÷���</a>
            <span class="caret"></span></button>
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
      <li><a href="dayplantodayinsex.jsp">��ü ���� ���</a></li>
      
      <br>
      <li class="divider"></li>
      <li class="dropdown-header">��ȸ</li>
      <hr>
      <li><a href="editorindex.jsp">��ü ������ ���</a></li>
      <li><a href="diaryindex.jsp">��ü �ϱ� ���</a></li>
      <li><a href="todoindex.jsp">��ü �� �� ���</a></li>
      
      
    </ul>
          </div>
          
          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="#" >��Ʈ������</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="��������ҽ�����.jsp">���</a>
              </li>
              
              <li>
                <a class="dropdown-item" href="�������.jsp">���</a>
              </li>
            </ul>
          </div>

          <div class="dropdown nav-item active">
            <a class="nav-link dropdown-toggle" href="#" >����������</a>
            <ul
              class="dropdown-menu"
              aria-labelledby="dropdownMenuLink"
            >
              <li>
                <a class="dropdown-item" href="#">ȸ������ ����/Ż��</a>
              </li>
              <li>
                <a class="dropdown-item" href="#">��ü �н���Ȳ ��ȸ</a>
              </li>
              <li>
                <a class="dropdown-item" href="#">���ø���Ʈ</a>
              </li>
            </ul>
          </div>
          <li class="nav-item active">
            <a class="nav-link" href="#">�α׾ƿ�</a>
          </li>
        </ul>
      </div>
    </header>


	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav"></div>

		<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- ȸ��Ż�� Modal -->
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
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




				<!-- ##### Single Widget ##### -->
				<div class="widget catagory mb-50">
					<h6 class="widget-title mb-30">å �󼼼Ұ�</h6>
					<br>
					<!-- Widget Title -->
					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li class="active" style="color: #fbb710"><a>������ ��õ</a></li>
							<hr />
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
							<li><a href="#">å</a></li>
							<li><a href="#">����</a></li>
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

								<li class="breadcrumb-item">��ǻ��/IT</li>
								<li class="breadcrumb-item">��ǻ�Ͱ���</li>
								<li class="breadcrumb-item">��ǻ�Ͱ���/���а���</li>
								<li class="breadcrumb-item active" aria-current="page">��ǻ��
									���� �ε��</li>
							</ol>
						</nav>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-lg-6">
						<div class="single_product_thumb">
							<div class="book_thumbnail">
								<img class="bk-img" src="image/3.jpg" alt="" />
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-5" style="padding-top: 60px">
						<div class="single_product_desc">
							<!-- Product Meta Data -->
							<div class="product-meta-data">
								<div class="line"></div>
								<h1 style="font-weight: 540">��ǻ�� ���� �ε��</h1>
								</a>
							</div>

							<div class="short_overview my-5">
								<div class="product__details__text">
									<div class="book_description">
										<hr>
										<br> <strong> 4�� ���� ������ ��ǻ�Ͱ����� �ٽ� ������ �� �ǿ�! </strong> <br>
										<p>�˰���, ������ ����, �����ͺ��̽�, ��ǻ�� ����, �پ��� ����� ���α׷��� �з�����. ��������
											������ å �� ���� �� �� �ִ� ������ �� ���� å���� ��� �ٷ�� �ֽ��ϴ�. ��ǻ�Ͱ����� �� ���� �߿���
											�⺻�� �Ǵ� �߿��� �κ��� ������ ����, �׸��� ���� ���������� ������ ����ġ�� �մϴ�. �ʺ��ڿ��Դ�
											��ǻ�Ͱ����� �⺻�⸦ ���� �� �ְ� �ϰ�, ���α׷��ӿ��Դ� ������ �Ҿ��� �� ������ �� ���Դϴ�.</p>

										<div>
											<ul class="book_info">
												<li><b>����</b> <span>���彺�� �����̶� �ʷ�</span></li>
												<li><b>������ ��</b> <span>280p</span></li>
												<li><b>����</b> <span>18,000��</span></li>
												<li><b>ISBN</b> <span>9788966262199</span></li>

												<li><b>���ǻ�</b> <span>�λ���Ʈ</span></li>
												<li><b>�Ⱓ��</b> <span>2018�� 04�� 19��</span></li>

											</ul>
										</div>
									</div>
								</div>
							</div>

							<!-- Add to Cart Form -->

							<div style="padding-left: 40%; padding-top: 30px;">
								<button type="submit" name="addtocart" value="5"
									class="btn amado-btn">
									<i class="fas fa-heart"></i> ���ø���Ʈ
								</button>
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
