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
<link rel="icon" href="image/p+만.png" />
    <script src="jquery-3.6.0.min.js"></script>

    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- Bootstrap cdn 설정 -->
  <!--   <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    /> -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
    />
   <!--   <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    /> -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Core Style CSS -->
     <link rel="stylesheet" href="css/core-style.css" />
    <link rel="stylesheet" href="style.css" />
        <link rel="stylesheet" href="css/유형조사.css" />
    
<!--     <link href="css/유형조사.css" rel="stylesheet" />
 -->    
     <!-- Font Awesome icons (free version)-->
    <script
      src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
      crossorigin="anonymous"
    ></script>
    
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


		<div style="width: 60%; margin-top: 150px; margin-left: 300px;">
			<!-- Option 1: Bootstrap Bundle with Popper -->
			 <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <h1 class="userTitle" style="font-size: 38px; margin-left: 195px;
  margin-top: -45px;">
      <i class="fas fa-user-check"></i> 사용자 유형 조사
    </h1>

    <div class="study">회원님이 공부하고 싶은 분야는 무엇인가요?</div>

    <br /><br /><br />

    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script>
      $(document).ready(function () {
        //대분류
        var sel1 = {
          " ": "선택",
          p101: "컴퓨터공학",
          p102: "IT일반",
          p103: "컴퓨터입문/활용",
          p104: "전산통계/해석",
          p105: "OS",
          p106: "네트워크",
          p107: "보안/해킹",
          p108: "데이터베이스",
          p109: "게임",
          p110: "웹 프로그래밍",
          p111: "프로그래밍 언어",
          p112: "모바일 프로그래밍",
          p113: "OA/사무자동화",
          p114: "웹사이트",
          p115: "자격증/수험서",
        };

        // 중분류
        //sel1이 p101일경우
        var sel2_1 = {
          p201: "컴퓨터공학/과학개론",
          p202: "소프트웨어공학",
          p203: "마이크로프로세서",
          p204: "자료구조/알고리즘",
          p205: "인공지능",
        };

        // 102
        var sel2_2 = {
          p206: "IT일반서",
        };

        // 103
        var sel2_3 = {
          p207: "컴퓨터입문/활용",
          p208: "인터넷입문/활용",
          p209: "컴퓨터교육",
        };

        // 104
        var sel2_4 = {
          p210: "전산통계/수치해석",
          p211: "전산통계/빅데이터",
        };

        // 105
        var sel2_5 = {
          p212: "widows",
          p213: "macos",
          p214: "임베디드",
          p215: "arm",
          p216: "유닉스",
          p217: "리눅스",
        };

        // 106
        var sel2_6 = {
          p218: "네트워크 일반",
          p219: "tcp/ip",
        };

        // 108
        var sel2_8 = {
          p220: "데이터베이스 일반",
          p221: "oracle",
          p222: "sql",
        };

        // 109
        var sel2_9 = {
          p223: "게임기획",
          p224: "모바일게임",
          p225: "게임개발",
        };

        // 110
        var sel2_10 = {
          p226: "웹프로그래밍 일반",
          p227: "html/css",
          p228: "javascript",
          p229: "jquery",
          p230: "xml",
          p231: "asp",
          p232: "jsp",
          p233: "php",
          p234: "ajax",
          p235: "flex",
        };

        // 111
        var sel2_11 = {
          p236: "프로그래밍 일반",
          p237: "파이썬",
          p238: "c",
          p239: "C++",
          p240: "C#",
          p241: "visualbasic",
          p242: "java",
          p243: ".net",
        };

        // 112
        var sel2_12 = {
          p244: "모바일 프로그래밍 일반",
          p245: "아이폰/아이패드",
          p246: "안드로이드",
          p247: "모바일게임",
        };

        // 113
        var sel2_13 = {
          p248: "엑셀",
          p249: "파워포인트",
        };

        // 114
        var sel2_14 = {
          p250: "웹사이트 기획",
          p251: "웹디자인",
          p252: "웹서비스",
          p253: "ux/ui",
          p254: "트위터/페이스북",
          p255: "블로그/홈페이지",
          p256: "쇼핑몰/전자상거래",
          p257: "웹제작도구",
        };

        // 115
        var sel2_15 = {
          p258: "사무자동화",
          p259: "정보 네트워크 보안",
          p260: "그래픽/디자인",
          p261: "기타자격증",
        };

        // 소분류
        //sel2가 p205일경우
        var sel3_1 = {
          p301: "인공지능 일반",
          p302: "딥러닝/머신러닝",
        };

        // 218
        var sel3_2 = {
          p303: "네트워크 일반",
          p304: "Server",
          p305: "지리정보",
        };

        // 225
        var sel3_3 = {
          p306: "유니티",
          p307: "인리얼",
          p308: "게임개발 일반",
        };

        // 243
        var sel3_4 = {
          p309: ".NET 일반",
          p310: "VisualC++.NET/VisualC#.NET",
          p311: "ASP.NET",
        };

        // 258
        var sel3_5 = {
          p312: "워드프로세서",
          p313: "컴퓨터활용능력",
          p314: "사무자동화 산업기사",
          p315: "ITQ",
          p316: "DIAT",
          p317: "MOS",
        };

        // 259
        var sel3_6 = {
          p318: "정보처리기사",
          p319: "정보보안기사",
          p320: "정보기기 운용기능사",
        };

        // 260
        var sel3_7 = {
          p321: "컴퓨터그래픽스 운용기능사",
          p322: "GTQ/웹디자인 기능사",
        };

        // 261
        var sel3_8 = {
          p323: "전자상거래 관리사",
          p324: "e-test",
          p325: "코딩",
          p326: "컴퓨터자격증 일반",
        };

        //sel1에 서버에서 받아온 값을 넣기위해..
        // map배열과 select 태그 id를 넘겨주면 option 태그를 붙여줌.
        // map[키이름] = 그 키에 해당하는 value를 반환한다.
        //retOption(데이터맵, select함수 id)
        function retOption(mapArr, select) {
          if (mapArr != null) {
            var html = "";
            var keys = Object.keys(mapArr);
            for (var i in keys) {
              html +=
                "<option value=" +
                "'" +
                keys[i] +
                "'>" +
                mapArr[keys[i]] +
                "</option>";
            }

            $("select[id='" + select + "']").html(html);
          } else {
            $("#sel2").hide();
            $("#sel3").hide();
          }
        }

        $("select[id='sel1']").on("change", function () {
          // 운비 2)------- 첫번째 select 선택 시에는 기존에 선택되어있던 애들 숨겨주기 위해서
          // ------- sel3이랑 sel2 숨기기
          $("#sel2").hide();
          $("#sel3").hide();
          var option = $("#sel1 option:selected").val();
          var subSelName = "";
          if (option == "p101") {
            subSelName = "sel2_1";
          } else if (option == "p102") {
            subSelName = "sel2_2";
          } else if (option == "p103") {
            subSelName = "sel2_3";
          } else if (option == "p104") {
            subSelName = "sel2_4";
          } else if (option == "p105") {
            subSelName = "sel2_5";
          } else if (option == "p106") {
            subSelName = "sel2_6";
          } else if (option == "p107") {
            // 운비 1) subSelName = "sel2_7"; ---> 객체가 없어서 에러가 발생해서
            // null값으로 집어넣고 retOption이라는 function안에 null값에 대한 처리를 집어넣었음!
            subSelName = null;
          } else if (option == "p108") {
            subSelName = "sel2_8";
          } else if (option == "p109") {
            subSelName = "sel2_9";
          } else if (option == "p110") {
            subSelName = "sel2_10";
          } else if (option == "p111") {
            subSelName = "sel2_11";
          } else if (option == "p112") {
            subSelName = "sel2_12";
          } else if (option == "p113") {
            subSelName = "sel2_13";
          } else if (option == "p114") {
            subSelName = "sel2_14";
          } else if (option == "p115") {
            subSelName = "sel2_15";
          } else {
            // 운비 3) sel1 선택을 클릭했을 때 어떤 기능을 수행할 건지
            $("#sel2").hide();
            $("#sel3").hide();
            return;
          }
          $("#sel2").show();
          retOption(eval(subSelName), "sel2");
        });
        retOption(sel1, "sel1");

        $("select[id='sel2']").on("change", function () {
          // 운비 4) ------- 두번째 select 선택 시에는 기존에 선택되어있던 애들 숨겨주기 위해서
          // ------- sel3 숨기기
          $("#sel3").hide();
          var option = $("#sel2 option:selected").val();
          var subSelName = "";
          if (option == "p205") {
            subSelName = "sel3_1";
          } else if (option == "p218") {
            subSelName = "sel3_2";
          } else if (option == "p225") {
            subSelName = "sel3_3";
          } else if (option == "p243") {
            subSelName = "sel3_4";
          } else if (option == "p258") {
            subSelName = "sel3_5";
          } else if (option == "p259") {
            subSelName = "sel3_6";
          } else if (option == "p260") {
            subSelName = "sel3_7";
          } else if (option == "p261") {
            subSelName = "sel3_8";
          } else {
            $("#sel3").hide();
            return;
          }
          $("#sel3").show();
          retOption(eval(subSelName), "sel3");
        });
        retOption(sel2, "sel2");
      });
    </script>
    <div class="d-flex justify-content-center" style="padding-left: 255px;  ">
      <!--대분류-->
      <select name="sel1" id="sel1" style="border: solid #fbb710;
      ">
        선택
      </select>
      <!--중분류-->
      <select name="sel2" id="sel2" style="display: none; border: solid #fbb710; "></select>
      <!--소분류-->
      <select name="sel3" id="sel3" style="display: none; border: solid #fbb710;"></select>
    </div>

    <div class="d-flex justify-content-center">
      <a class="btn btn-primary" href="#" role="button" style="  margin-left: 260px;
      ">결과 확인</a>
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
<!--     <script src="js/plugins.js"></script>
 -->    <!-- Active js -->
    <script src="js/active.js"></script>
  </body>
</html>
