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

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
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
            <h6 class="widget-title mb-30">�н��÷���</h6>
            <br>
            <!-- Widget Title -->
            <!--<h6 class="widget-title mb-30">������</h6>
 -->
            <!--  Catagories  -->
            <div class="catagories-menu">
               <ul>
                  <li class="active" style="color: #fbb710"><a>������</a></li>
                  <hr />
                  <li><a href="�����ٸ�_���.jsp">���</a></li>
                  <li><a href="��ü�����ٸ��.jsp">��ü ������ ���</a></li>

               </ul>
            </div>
         </div>

         <!-- ##### Single Widget ##### -->
         <div class="widget category mb-50">
            <!-- Widget Title -->
            <!--<h6 class="widget-title mb-30">����</h6>
 -->
            <!-- Widget Title -->

            <div class="catagories-menu">
               <ul>
                  <li class="active" style="color: #fbb710"><a>����</a></li>
                  <hr />
                  <li><a href="�������4��.jsp">���</a></li>
                  <li><a href="#">��ü ���� ���</a></li>
               </ul>
            </div>
         </div>

         <!-- ##### Single Widget ##### -->
         <div class="widget category mb-50">
            <!-- Widget Title -->
            <!-- <h6 class="widget-title mb-30">����</h6>
 -->
            <!-- Widget Title -->

            <div class="catagories-menu">
               <ul>
                  <li class="active" style="color: #fbb710"><a>��ȸ</a></li>
                  <hr />
                  <li><a href="��ü�����͸��.jsp">��ü ������ ���</a></li>
                  <li><a href="��ü�ϱ���.jsp">��ü �ϱ� ���</a></li>
                  <li><a href="#">��ü �� �� ���</a></li>

               </ul>
            </div>
         </div>
      </div>


		<div class="" style="width: 40%; margin-top: 10%; margin-left: 25%;">
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>


			<!--å �˻�/���ø���Ʈ���� ã��/����/����/������-������/���� �н��� -->

			<div class="container">
				<form action="#" method="get" role="form">
					<h3 style="font-weight: bold;">���� ���</h3>
					<br>
					<hr>
					<br> ���� ��¥ ���� <input type="date" class="form-control"
						placeholder="date input" /> <br> <input type="text"
						class="form-control" placeholder="���� �̸��� �Է��ϼ���." /> <br>

					<br>
					<div class="text-center">
						<a href="#" class="btn btn-primary">���� ���</a>
					</div>
			</div>
<!--���θ���Ʈ-->
      <div class="col">
          <div class="container">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <div class="col">
                <div class="card" id="list1" style="border-radius: .75rem; background-color: #eff1f2;">
                  <div class="card-body py-4 px-4 px-md-5">
        
                    <p class="h1 text-center mt-3 mb-4 pb-3 text-primary">
                      <i class="fas fa-check-square me-1"></i>
                      <u>TO Do List</u>
                    </p>
        
                    <div class="pb-2">
                      <div class="card">
                        <div class="card-body">
                          <div class="d-flex flex-row align-items-center">
                            <input type="text" class="form-control form-control-lg" id="exampleFormControlInput1" placeholder="������ �Է��ϼ���.">
                            <!-- <a href="#!" data-mdb-toggle="tooltip" title="Set due date"><i class="fas fa-calendar-alt fa-lg me-3"></i></a> -->
                            <div>
                              <button type="button" class="btn btn-primary">���</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
        
                    <hr class="my-4">
        
                    <ul class="list-group list-group-horizontal rounded-0 bg-transparent">
                      <li class="list-group-item d-flex align-items-center ps-0 pe-3 py-1 rounded-0 border-0 bg-transparent">
                        <div class="form-check">
                          <input
                            class="form-check-input me-0"
                            type="checkbox"
                            value=""
                            id="flexCheckChecked1"
                            aria-label="..."
                            checked
                          />
                          <p class="lead fw-normal mb-0" style="display: inline-block;">157p ���� 1�� �ٽ� Ǯ���
                            <a href="#!" class="text-info" data-mdb-toggle="tooltip" title="Edit todo"><i class="fas fa-pencil-alt me-3"></i></a>
                            <a href="#!" class="text-danger" data-mdb-toggle="tooltip" title="Delete todo"><i class="fas fa-trash-alt"></i></a>
                          </p>
                        </div>
                      </li>
                     
                      <li class="list-group-item ps-3 pe-0 py-1 rounded-0 border-0 bg-transparent">
                        <div class="d-flex flex-row justify-content-end mb-1">
                         
                        </div>
                      </li>
                    </ul>

                    <ul class="list-group list-group-horizontal rounded-0 bg-transparent">
                      <li class="list-group-item d-flex align-items-center ps-0 pe-3 py-1 rounded-0 border-0 bg-transparent">
                        <div class="form-check">
                          <input
                            class="form-check-input me-0"
                            type="checkbox"
                            value=""
                            id="flexCheckChecked1"
                            aria-label="..."
                            checked
                          />
                          <p class="lead fw-normal mb-0" style="display: inline-block;">�ݺ��� ���� ��Ʃ�� ���� 2�� ����
                            <a href="#!" class="text-info" data-mdb-toggle="tooltip" title="Edit todo"><i class="fas fa-pencil-alt me-3"></i></a>
                            <a href="#!" class="text-danger" data-mdb-toggle="tooltip" title="Delete todo"><i class="fas fa-trash-alt"></i></a>
                          </p>
                        </div>
                      </li>
                      
                      <li class="list-group-item ps-3 pe-0 py-1 rounded-0 border-0 bg-transparent">
                        <div class="d-flex flex-row justify-content-end mb-1">
                          
                        </div>
                      </li>
                    </ul>

                    <ul class="list-group list-group-horizontal rounded-0 bg-transparent">
                      <li class="list-group-item d-flex align-items-center ps-0   rounded-0 border-0 bg-transparent">
                        <div class="form-check">
                          <input
                            class="form-check-input me-0"
                            type="checkbox"
                            value=""
                            id="flexCheckChecked1"
                            aria-label="..."
                            checked
                          />
                          <p class="lead fw-normal mb-0"style="display: inline-block;">ª���� ��Ÿ ���� 30�� �ϱ�
                          
                            <a href="#!" class="text-info" data-mdb-toggle="tooltip" title="Edit todo"><i class="fas fa-pencil-alt me-3"></i></a>
                            <a href="#!" class="text-danger" data-mdb-toggle="tooltip" title="Delete todo"><i class="fas fa-trash-alt"></i></a>
                          </p>
                      </div>
                      </li> 
                    </ul>
      
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
 

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
