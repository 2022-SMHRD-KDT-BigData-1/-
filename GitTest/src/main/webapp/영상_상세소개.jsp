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
<title>P+(Programming에 Planner를 더하다.)</title>
    <!-- Favicon  -->
<link rel="icon" href="image/p+만.png" />
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css" />
    <link rel="stylesheet" href="style.css" />


    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
      rel="stylesheet"
    />
    <!--아이콘-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
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


       <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">
        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
        </div>
  
        <div class="shop_sidebar_area">
          <!-- ##### Single Widget ##### -->
          <div class="widget catagory mb-50">

   
       	<!-- ##### Single Widget ##### -->
				<div class="widget catagory mb-50">
					<h6 class="widget-title mb-30">영상 상세소개</h6>
					<br>
					<!-- Widget Title -->
					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li class="active" style="color: #fbb710"><a>컨텐츠 추천</a></li>
							<hr />
							<li><a href="#">유형 확인 및 재검사</a></li>

						</ul>
					</div>
				</div>

				<!-- ##### Single Widget ##### -->
				<div class="widget category mb-50">
					<!-- Widget Title -->

					<div class="catagories-menu">
						<ul>
							<li class="active" style="color: #fbb710"><a>위시리스트</a></li>
							<hr />
							<li><a href="#">책</a></li>
							<li><a href="#">영상</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

  
      
  
     

      <!-- Product Details Area Start -->
      <div class="single-product-area section-padding-100 clearfix">
        <div class="container-fluid" style="padding-top:10%">
         

          <div class="row">
            <div class="col-12 col-lg-6" style="padding-top: 60px;">
              <div class="single_product_thumb">
                <div class="video_thumbnail">
                    <img class="mv-img" src="video/3.png" alt="" />
                  </div>
              </div>
            </div>
            <div class="col-12 col-lg-5" style="padding-top:60px">
              <div class="single_product_desc">
                <!-- Product Meta Data -->
                <div class="product-meta-data">
                  <div class="line"></div>
                    <h3 style="font-weight: bold;">  [수학없는 인공지능 강의 #1]인공지능 머신러닝 딥러닝-알기 쉬운
                        개념정리 | KAIST AI STUDIO</h3>
                  </a>
                </div>

                <div class="short_overview my-5">
                    <div class="product__details__text">
                    <div class="book_description">
                      <div>
                        <ul class="book_info">
                           
                                <li>
                                  <b>채널명</b>
                                  <span>AI는 내 친구</span>
                                </li>
                                <li>
                                  <b>업로드 날짜</b>
                                  <span>2020년 10월 2일</span>
                                </li>
                                <li>
                                  <b>영상 길이</b>
                                  <span>10분 52초</span>
                                </li>
                                <li>
                                  <b>조회수</b>
                                  <span>7,421회</span>
                                </li>
                        </ul>
                      </div>
                    </div>
                </div>
            </div>

                <!-- Add to Cart Form -->
               
                 <div style="padding-left:40%; padding-top: 30px;">
                  <button
                    type="submit"
                    name="addtocart"
                    value="5"
                    class="btn amado-btn"
                  >
                  <i class="fas fa-heart"></i> 위시리스트
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

