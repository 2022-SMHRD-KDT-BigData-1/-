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
     <!-- Google fonts-->
     <link
     href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
     rel="stylesheet"
     type="text/css"
   />
   <link
     href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
     rel="stylesheet"
     type="text/css"
   />

   <!-- Google Font -->
   <link
     href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
     rel="stylesheet"
   />
   <link href="calendar/packages copy/core/main.css" rel="stylesheet" />
   <link href="calendar/packages copy/daygrid/main.css" rel="stylesheet" />
   <script src="calendar/packages copy/core/main.js"></script>
   <script src="calendar/packages copy/interaction/main.js"></script>
   <script src="calendar/packages copy/daygrid/main.js"></script>
   <script>
     document.addEventListener("DOMContentLoaded", function () {
       var calendarEl = document.getElementById("calendar");
       
		var event={title: "자바", start:"2022-02-25", end:"2022-02-26"};
		var eventlist= [];
		eventlist.push(event);

       var calendar = new FullCalendar.Calendar(calendarEl, {
         plugins: ["interaction", "dayGrid"],
         locale : 'ko',
         
         editable: true,
         eventLimit: true, // allow "more" link when too many events
         events: eventlist 
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
     <div
     class="modal fade"
     id="staticBackdrop"
     data-bs-backdrop="static"
     data-bs-keyboard="false"
     tabindex="-1"
     aria-labelledby="staticBackdropLabel"
     aria-hidden="true"
   >
     <div class="modal-dialog">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title" id="staticBackdropLabel">
             <!-- <i class="bi bi-exclamation-circle"></i> -->
             <i class="bi bi-exclamation-circle-fill"></i>
             회원 탈퇴</h5>
           <button
             type="button"
             class="btn-close"
             data-bs-dismiss="modal"
             aria-label="Close"
           >
           <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
            <path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
          </svg>         
        </button>
         </div>
         <br>
         <div class="modal-body text-center" style="font-size: 20px;">
           회원탈퇴 하시겠습니까?
         </div>
         <br>

         <div class=" modal-footer ">
           <a href="#" class="btn btn-primary ">확인</a>
           </button>
         </div>
       </div>
     </div>
   </div>

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
      </div>

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
              <li>
                <a href="login-form-v2/Login_v2/회원정보 수정.html"
                  >회원 정보 수정</a
                >
              </li>
             <a ><li class="btn" data-bs-toggle="modal"
              data-bs-target="#staticBackdrop">회원 탈퇴</a></li>
            </ul>
          </div>
        </div>

        <!-- ##### Single Widget ##### -->
        <div class="widget catagory mb-50">

          <!--  Catagories  -->
          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">위시리스트</a></li>
              <hr />
              <li>
                <a href="#"
                  >책</a
                >
              </li>
              <li>
                <a href="#"
                  >영상</a
                >
              </li>
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
              <li>
                <a href="#">전체 에디터 목록</a>
              </li>
              <li><a href="#">전체 일기 목록</a></li>
            </ul>
          </div>

        
        </div>
      </div>
      <div style="width: 80%; padding-top:100px; margin-left: 100px;">

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"
        ></script>

          <!-- 달력 -->
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
