<%@page import="com.pplus.model.AchieveDTO"%>
<%@page import="com.pplus.model.DiaryDAO"%>
<%@page import="com.pplus.model.ScheduleDTO"%>
<%@page import="com.pplus.model.EditorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	EditorDAO editorDAO = new EditorDAO();
	DiaryDAO diaryDAO = new DiaryDAO();
	
	ScheduleDTO schedule = (ScheduleDTO)session.getAttribute("schedule");
	AchieveDTO achievve = (AchieveDTO)session.getAttribute("achieve");
	
	
	int editorCount = editorDAO.getCount(schedule.getSchedule_num());
	int diaryCount = diaryDAO.getCount(schedule.getSchedule_num());
	
	
	
%>
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
    <title>P+ - achieve</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico" />

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css" />
    <link rel="stylesheet" href="style.css" />

    <title>Hello, world!</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

    
    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
      integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
      integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
      crossorigin="anonymous"
    ></script>
     <!-- Google Fonts -->
     <link
     href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
     rel="stylesheet"
   />

   <link href="css/동글.css" rel="stylesheet" />
   <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

   <link
     rel="stylesheet"
     href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css"
   />
   <script src="https://d3js.org/d3.v4.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/billboard.js/dist/billboard.min.js"></script>
   <link
     rel="stylesheet"
     href="https://cdn.jsdelivr.net/npm/billboard.js/dist/billboard.min.css"
   />
   <link
     rel="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
     type="text/css"
   />

   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
   <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->

   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.1/Chart.min.js"></script>

   <!-- 파이 그래프 -->
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
                <a class="dropdown-item" href="mywhish.jsp">위시리스트</a>
              </li>
            </ul>
          </div>
          <li class="nav-item active">
            <a class="nav-link" href="plogout.jsp">로그아웃</a>
          </li>
        </ul>
      </div>
    </header>


    <!-- Search Wrapper Area Start -->
    <div class="search-wrapper section-padding-100">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="search-content"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- Search Wrapper Area End -->

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
              <li class="active"><a href="schedule.jsp">달력</a></li>
              <hr />
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
              <li class="active"><a href="#">에디터</a></li>
              <hr />
              <li>
                <a href="editorset.jsp"
                  >작성</a
                >
              </li>
              <li>
                <a href="editorindex.jsp"
                  >목록</a
                >
    
              </li>
            </ul>
            </ul>
          </div>
        </div>

        <!-- ##### Single Widget ##### -->
        <div class="widget category mb-50">
          <!-- Widget Title -->
          <!-- <h6 class="widget-title mb-30">일정</h6> -->

          <!-- Widget Title -->

          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">일기</a></li>
              <hr />
              <li><a href="diaryset.jsp">작성</a></li>
              <li><a href="diaryindex.jsp">목록</a></li>
            </ul>
          </div>

          <br />

          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">학습진행상황</a></li>
              <hr />
            </ul>
            <br><br><br><br><br><br>
            <br><br><br><br>
          </div>
        </div>
      </div>
      <div
        style="width: 63%;
        margin: 50px;
        margin-bottom: 10%;
        margin-left: 15%;
        margin-top: 10%;
    " >

      <!-- 학습진행상황 -->
      <h1 class="name">스케줄명 : ${sessionScope.schedule.schedule_name }</h1>
      <br>
          <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="container">
                  <div class="row my-3">
                    <div class="col-12 ">
                      <h1 class="donut" style="padding-left: 5%;"><학습 진행률></h1>
                    </div>
                  </div>
                </div>

                <div class="col-sm-6 col-md-7">
                  <div id="donut-chart"></div>
                    <script>
                    var studyDay = "${sessionScope.achieve.achieve_study_day}";
                    var numDay = "${sessionScope.achieve.schedule_num_day}";
                    var head = studyDay / numDay * 100;
                    head = head.toFixed(1);
                    console.log(head);
                      var chart = bb.generate({
                        data: {
                          columns: [
                            ["진행 분량", head],
                            ["남은 분량", 100-head],
                          ],
                          type: "donut",
                          onclick: function (d, i) {
                            console.log("onclick", d, i);
                          },
                          onover: function (d, i) {
                            console.log("onover", d, i);
                          },
                          onout: function (d, i) {
                            console.log("onout", d, i);
                          },
                        },
                        donut: {
                          title: head+"%",
                        },
                        Options: {
                          responsive: false,
                          
                        },
                        bindto: "#donut-chart",
                      });
                    </script>
                </div>
              </div>
              <div class="skill-mf">
                <div class="col-12"></div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="row">
                <div class="title-box-2">
                  <div class="col-12 py-4">
                    <h1 style="padding-left: 52px;
                    width: 106%">
                      <나의 기록 및 진도현황>
                    </h1>
                  </div>
                </div>

                <div class="container" style="padding-left: 80px">
                  <div class="icon">
                    <span class="st">${sessionScope.achieve.achieve_study_day}/${sessionScope.schedule.schedule_num_day }</span>
                    <p>학습일</p>
                  </div>

                  <div class="icon">
                    <span class="ed"><%= editorCount %></span>
                    <p>에디터</p>
                  </div>

                  <div class="icon">
                    <span class="di"><%= diaryCount %></span>
                    <p>일기</p>
                  </div>
                </div>
                
                <div class="container p-5" style=" width: 54rem;
                padding: 4rem!important; font-size: 18px;">
                
                  <span>남은기간</span>
                  <span class="pull-right">${sessionScope.achieve.achieve_study_day}/${sessionScope.schedule.schedule_num_day }</span>
                  <div class="progress">
                    <div
                      class="progress-bar"
                      role="progressbar"
                      style="width: ${sessionScope.achieve.achieve_study_day / sessionScope.schedule.schedule_num_day * 100 }%"
                      aria-valuenow="${sessionScope.achieve.achieve_study_day / sessionScope.schedule.schedule_num_day * 100 }"
                      aria-valuemin="0"
                      aria-valuemax="100"
                    ></div>
                  </div>
                  <span>남은분량</span>
                  <span class="pull-right">${sessionScope.achieve.achieve_study_page}/${sessionScope.schedule.book_page }</span>
                  <div class="progress">
                    <div
                      class="progress-bar"
                      role="progressbar"
                      style="width: ${sessionScope.achieve.achieve_study_page / sessionScope.schedule.book_page * 100 }%"
                      aria-valuenow="${sessionScope.achieve.achieve_study_page / sessionScope.schedule.book_page * 100 }"
                      aria-valuemin="0"
                      aria-valuemax="100"
                    ></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
          </div>
      </div>

          </div>
      </div>

        </div>
        <div style="width: 80%; margin-top: 10%; margin-left: 70px;">

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"
        ></script>
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
