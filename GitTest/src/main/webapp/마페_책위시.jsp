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


<!-- Option 2: Separate Popper and Bootstrap JS --> 

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

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
				<div class="modal-body text-center" style="font-size: 20px">
					ȸ��Ż�� �Ͻðڽ��ϱ�?</div>
				<br>

				<div class=" modal-footer ">
					<a href="#" class="btn btn-primary ">Ȯ��</a>
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
				<h6 class="widget-title mb-30">����������</h6>

				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">ȸ�� ����</a></li>
						<hr />
						<li><a href="#">ȸ�� ���� ����</a></li>
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
				<!-- Widget Title -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">��ü�н���Ȳ��ȸ</a></li>
						<hr />
						<li><a href="#">�޷� üũ</a></li>
						<li><a href="#">��Ʈ</a></li>
						<li><a href="#">��ü ������ ���</a></li>
						<li><a href="#">��ü ������ ���</a></li>
						<li><a href="#">��ü �ϱ� ���</a></li>
					</ul>
				</div>
			</div>
		</div>
		 <div style="width: 80%; padding-top: 150px; margin-left: 70px;">

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"
        ></script>

<!-------���� ���� �κ�---------------------->
        <div class="cart-table-area section-padding-100">
          <div class="container-fluid">
            <div class="row">
              <div class="col-12">
                <div class="cart-title ">
                  <h2>[ ���ø���Ʈ-å ]</h2>
                </div>
  
                <div class="cart-table clearfix">
                  <table class="table table-responsive">
                    <thead style="text-align: center;">
                      <tr>
                        <th style="width: 50%;">NO.</th>
                        <th>���ø���Ʈ</th>
                        <th>����</th>
                        <th>���� �н�����</th>
                      </tr>
                    </thead>
                    <tbody style="text-align: center;">
                      <tr >
                        <td class="wish-num">
                          <div class="form-check">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="flexRadioDefault"
                              id="flexRadioDefault1"
                            />
                            <label
                              class="form-check-label"
                              for="flexRadioDefault1"
                            >
                              <h5 style="padding-left: 20px;">1</h5>
                            </label>
                          </div>
                        </td>
                        <td class="pic">
                          <img src="image/4.jpg" style="width: 220px; height: 160px;">  
                        </td>
                        <td class="title">
                          <span>���� ������ǻ��
                        </span>
                        </td>
                        <td class="type">
                          <div class="type-name">
                            <span>��ǻ��/IT>��ǻ�Ͱ���>
                          ��ǻ�Ͱ���/���а���</span>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="wish-num">
                          <div class="form-check">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="flexRadioDefault"
                              id="flexRadioDefault1"
                            />
                            <label
                              class="form-check-label"
                              for="flexRadioDefault1"
                            >
                              <h5 style="padding-left: 20px;">2</h5>
                            </label>
                          </div>
                        </td>
                        <td class="pic">
                          <img src="image/5.jpg"  style="width: 220px; height: 160px;">
                        </td>
                        <td class="title">
                          <span>��ǻ�� ���� �ΰ�����</span>
                        </td>
                        <td class="type">
                          <div class="type-name">
                            <span>��ǻ��/IT>��ǻ�Ͱ���>
                              ��ǻ�Ͱ���/���а���</span>
                        </td>
                      </tr>
                      <tr>
                        <td class="wish-num">
                          <div class="form-check">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="flexRadioDefault"
                              id="flexRadioDefault1"
                            />
                            <label
                              class="form-check-label"
                              for="flexRadioDefault1"
                            >
                              <h5 style="padding-left: 20px;">3</h5>
                            </label>
                          </div>
                        </td>
                        <td class="pic">
                          <img src="image/3.jpg" style="width: 220px; height: 160px;">
                        </td>
                        <td class="title">
                          <span>��ǻ�� ���� �ε��</span>
                        </td>
                        <td class="type">
                          <div class="type-name">
                            <span>��ǻ��/IT>��ǻ�Ͱ���>
                        ��ǻ�Ͱ���/���а���</span>
                          </div>
                        </td>
                      </tr>
                      
                    </tbody>
                  </table>
                </div>
              </div>
            
            </div>
          </div>
        </div>
        <div class="text-center">
          <a href="#" class="btn btn-dark" >���ø���Ʈ ����</a>
          <a href="#" class="btn btn-dark">������ ���</a>
        </div>
        <br>
        <nav aria-label="Page navigation example">
          <div class="text-center">
            <ul class="pagination" style=" justify-content : center;">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                  <span class="sr-only">Previous</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                  <span class="sr-only">Next</span>
                </a>
              </li>
            </ul>
          </div>
        </nav>
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

