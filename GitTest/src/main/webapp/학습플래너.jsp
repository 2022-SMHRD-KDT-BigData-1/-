<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Shop</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico" />

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css" />
    <link rel="stylesheet" href="style.css" />
    
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
				<li class="nav-item active"><a class="nav-link" href="#">사이트
						소개</a></li>
				<li class="nav-item active"><a class="nav-link" href="컨텐츠추천.jsp">컨텐츠
						추천</a></li>
				<li class="nav-item active"><a class="nav-link" href="학습플래너.jsp">학습플래너</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">포트폴리오</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">마이페이지</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">로그아웃</a>
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

     

      <div class="shop_sidebar_area">
        <!-- ##### Single Widget ##### -->
        <div class="widget catagory mb-50">
          <!-- Widget Title -->
          <h6 class="widget-title mb-30">스케줄</h6>

          <!--  Catagories  -->
          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">등록</a></li>
              <hr />
              <li><a href="#">목록</a></li>
              <li><a href="#">전체 스케줄 목록</a></li>
              <li><a href="#">전체 에디터 목록</a></li>
              <li><a href="#">전체 일기 목록</a></li>
            </ul>
          </div>
        </div>

        <!-- ##### Single Widget ##### -->
        <div class="widget category mb-50">
          <!-- Widget Title -->
          <h6 class="widget-title mb-30">일정</h6>

          <!-- Widget Title -->

          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">등록</a></li>
              <hr />
              <li><a href="#">목록</a></li>
              <li><a href="#">전체 일정 목록</a></li>
              <li><a href="#">전체 에디터 목록</a></li>
              <li><a href="#">전체 일기 목록</a></li>
            </ul>
          </div>
        </div>
      </div>
      
      
      
     <div style="width: 60%; margin-top: 10%; margin-left: 10%;">
        <h1 style="text-align: center;">MY 스케줄
            <i class="far fa-solid fa-calendar-check"></i>
          </h1>
          <br>
          <div class="container" >
            <table class="table table-bordered table-hover table-sm text-center "  >
              
          
                <thead class="table-warning ">
                  <th class="text-center">선택</th>
                  <th class="text-center">No.</th>
                  <th class="text-center">스케줄 이름</th>
                  <th class="text-center">시작 날 - 끝나는 날</th>
                  <th class="text-center">책 이름</th>
                  <th class="text-center">하루 학습 분량</th>
                  <th class="text-center">달성률</th>	  			
                </tr>
              </thead>
      
              <tbody>
                <tr> 		 
                  <td>
                      <input class="form-check-input" type="checkbox" value="sc1" id="flexCheckDefault">
                  </td>
                  <td>1</td>
                  <td>자바</td>
                  <td>2022.01.01-2022.01.20</td>
                  <td>Java</td>
                  <td>15p</td>
                  <td>75%</td>
                </tr>
      
                <tr> 		 
                  <td>
                    <input class="form-check-input" type="checkbox" value="sc1" id="flexCheckDefault">
                  </td>
                  <td>2</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                  </td>
                </tr>
      
                <tr>
                  <td>
                    <input class="form-check-input" type="checkbox" value="sc1" id="flexCheckDefault">
                  </td>
                  <td>3</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
      
                <tr>
                  <td>
                    <input class="form-check-input" type="checkbox" value="sc1" id="flexCheckDefault">
                  </td>
                  <td>4</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
      
                <tr>
                  <td>
                    <input class="form-check-input" type="checkbox" value="sc1" id="flexCheckDefault">
                  </td>
                  <td>5</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
              </tbody>
          </table>
          </div>
          <br>
           <div class="text-center">
       <a href="#" class="btn btn-dark">선택 완료</a>
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
