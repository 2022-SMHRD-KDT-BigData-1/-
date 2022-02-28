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
    
    <!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">
  </head>

  <body>
   	
   <div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="image/p+만1.png" alt="" /></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<button type="button" class="btn" data-toggle="collapse"
					data-target="#demo" style="background-color:black">
					<span></span><span></span><span></span>
				</button>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="demo">
			<ul class="navbar-nav">

				<li clas="nav-item"><a class="nav-link" href="#">사이트 소개</a></li>
				<li clas="nav-item"><a class="nav-link" href="컨텐츠추천.jsp">컨텐츠
						추천</a></li>
				<li clas="nav-item"><a class="nav-link" href="plannermain.jsp">학습플래너</a></li>
				<li clas="nav-item"><a class="nav-link" href="#">포트폴리오</a></li>
				<li clas="nav-item"><a class="nav-link" href="mypg_main.jsp">마이페이지</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">로그아웃</a></li>
			</ul>
		</div>
		<header id="header" class="fixed-top header-scrolled">
			<nav id="navbar" class="navbar">
				<a style="padding-left: 15px" href="ploginmain.jsp"><img
					style="width: 50px" src="image/p+만1.png"></a>
				<ul style="padding-right: 30px">
					<li><a class="nav-link scrollto" href="#"
						style="text-decoration: none">사이트 소개</a></li>
					<li></li>
					<div class="dropdown nav-item active">
						<a style="text-decoration: none" class="nav-link dropdown-toggle"
							href="컨텐츠추천.jsp">컨텐츠 추천</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="ptype.jsp">유형 확인 및
									재검사</a></li>
							<li><a class="dropdown-item" href="search1.jsp">책 검색</a></li>
						</ul>
					</div>

					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="plannermain.jsp">학습플래너</a>
						<span class="caret"></span>

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
							<li><a href="dayplantodayindex.jsp">전체 일정 목록</a></li>

							<br>
							<li class="divider"></li>
							<li class="dropdown-header">조회</li>
							<hr>
							<li><a href="editorallindex.jsp">전체 에디터 목록</a></li>
							<li><a href="diaryallindex.jsp">전체 일기 목록</a></li>
							<li><a href="todoallindex.jsp">전체 할 일 목록</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="#">포트폴리오</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="#">등록</a></li>

							<li><a class="dropdown-item" href="#">목록</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="mypg_main.jsp">마이페이지</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="pupdate.jsp">회원정보
									수정/탈퇴</a></li>
							<li><a class="dropdown-item" href="achieveall.jsp">전체
									학습상황 조회</a></li>
							<li><a class="dropdown-item" href="mybookwish.jsp">위시리스트</a></li>
						</ul>
					</div>
					<li class="nav-item active"><a class="nav-link"
						href="plogout.jsp">로그아웃</a></li>


				</ul>
			</nav>
		</header>


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
          null: "선택",
          P101: "컴퓨터공학",
          P102: "IT일반",
          P103: "컴퓨터입문/활용",
          P104: "전산통계/해석",
          P105: "OS",
          P106: "네트워크",
          P107: "보안/해킹",
          P108: "데이터베이스",
          P109: "게임",
          P110: "웹 프로그래밍",
          P111: "프로그래밍 언어",
          P112: "모바일 프로그래밍",
          P113: "OA/사무자동화",
          P114: "웹사이트",
          P115: "자격증/수험서",
        };

        // 중분류
        //sel1이 p101일경우
        var sel2_1 = {
          P201: "컴퓨터공학/과학개론",
          P202: "소프트웨어공학",
          P203: "마이크로프로세서",
          P204: "자료구조/알고리즘",
          P205: "인공지능",
        };

        // 102
        var sel2_2 = {
          P206: "IT일반서",
        };

        // 103
        var sel2_3 = {
          P207: "컴퓨터입문/활용",
          P208: "인터넷입문/활용",
          P209: "컴퓨터교육",
        };

        // 104
        var sel2_4 = {
          P210: "전산통계/수치해석",
          P211: "전산통계/빅데이터",
        };

        // 105
        var sel2_5 = {
          P212: "widows",
          P213: "macos",
          P214: "임베디드",
          P215: "arm",
          P216: "유닉스",
          P217: "리눅스",
        };

        // 106
        var sel2_6 = {
          P218: "네트워크 일반",
          P219: "tcp/ip",
        };

        // 108
        var sel2_8 = {
          P220: "데이터베이스 일반",
          P221: "oracle",
          P222: "sql",
        };

        // 109
        var sel2_9 = {
          P223: "게임기획",
          P224: "모바일게임",
          P225: "게임개발",
        };

        // 110
        var sel2_10 = {
          P226: "웹프로그래밍 일반",
          P227: "html/css",
          P228: "javascript",
          P229: "jquery",
          P230: "xml",
          P231: "asp",
          P232: "jsp",
          P233: "php",
          P234: "ajax",
          P235: "flex",
        };

        // 111
        var sel2_11 = {
          P236: "프로그래밍 일반",
          P237: "파이썬",
          P238: "c",
          P239: "C++",
          P240: "C#",
          P241: "visualbasic",
          P242: "java",
          P243: ".net",
        };

        // 112
        var sel2_12 = {
          P244: "모바일 프로그래밍 일반",
          P245: "아이폰/아이패드",
          P246: "안드로이드",
          P247: "모바일게임",
        };

        // 113
        var sel2_13 = {
          P248: "엑셀",
          P249: "파워포인트",
        };

        // 114
        var sel2_14 = {
          P250: "웹사이트 기획",
          P251: "웹디자인",
          P252: "웹서비스",
          P253: "ux/ui",
          P254: "트위터/페이스북",
          P255: "블로그/홈페이지",
          P256: "쇼핑몰/전자상거래",
          P257: "웹제작도구",
        };

        // 115
        var sel2_15 = {
          P258: "사무자동화",
          P259: "정보 네트워크 보안",
          P260: "그래픽/디자인",
          P261: "기타자격증",
        };

        // 소분류
        //sel2가 p205일경우
        var sel3_1 = {
          P301: "인공지능 일반",
          P302: "딥러닝/머신러닝",
        };

        // 218
        var sel3_2 = {
          P303: "네트워크 일반",
          P304: "Server",
          P305: "지리정보",
        };

        // 225
        var sel3_3 = {
          P306: "유니티",
          P307: "인리얼",
          P308: "게임개발 일반",
        };

        // 243
        var sel3_4 = {
          P309: ".NET 일반",
          P310: "VisualC++.NET/VisualC#.NET",
          P311: "ASP.NET",
        };

        // 258
        var sel3_5 = {
          P312: "워드프로세서",
          P313: "컴퓨터활용능력",
          P314: "사무자동화 산업기사",
          P315: "ITQ",
          P316: "DIAT",
          P317: "MOS",
        };

        // 259
        var sel3_6 = {
          P318: "정보처리기사",
          P319: "정보보안기사",
          P320: "정보기기 운용기능사",
        };

        // 260
        var sel3_7 = {
          P323: "컴퓨터그래픽스 운용기능사",
          P324: "GTQ/웹디자인 기능사",
        };

        // 261
        var sel3_8 = {
          P325: "전자상거래 관리사",
          P326: "e-test",
          P327: "코딩",
          P328: "컴퓨터자격증 일반",
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
          if (option == "P101") {
            subSelName = "sel2_1";
          } else if (option == "P102") {
            subSelName = "sel2_2";
          } else if (option == "P103") {
            subSelName = "sel2_3";
          } else if (option == "P104") {
            subSelName = "sel2_4";
          } else if (option == "P105") {
            subSelName = "sel2_5";
          } else if (option == "P106") {
            subSelName = "sel2_6";
          } else if (option == "P107") {
            // 운비 1) subSelName = "sel2_7"; ---> 객체가 없어서 에러가 발생해서
            // null값으로 집어넣고 retOption이라는 function안에 null값에 대한 처리를 집어넣었음!
            subSelName = null;
          } else if (option == "P108") {
            subSelName = "sel2_8";
          } else if (option == "P109") {
            subSelName = "sel2_9";
          } else if (option == "P110") {
            subSelName = "sel2_10";
          } else if (option == "P111") {
            subSelName = "sel2_11";
          } else if (option == "P112") {
            subSelName = "sel2_12";
          } else if (option == "P113") {
            subSelName = "sel2_13";
          } else if (option == "P114") {
            subSelName = "sel2_14";
          } else if (option == "P115") {
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
          if (option == "P205") {
            subSelName = "sel3_1";
          } else if (option == "P218") {
            subSelName = "sel3_2";
          } else if (option == "P225") {
            subSelName = "sel3_3";
          } else if (option == "P243") {
            subSelName = "sel3_4";
          } else if (option == "P258") {
            subSelName = "sel3_5";
          } else if (option == "P259") {
            subSelName = "sel3_6";
          } else if (option == "P260") {
            subSelName = "sel3_7";
          } else if (option == "P261") {
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
	      <select name="sel1" id="sel1" style="border: solid #30467C;
	      ">
	        선택
	      </select>
	      <!--중분류-->
	      <select name="sel2" id="sel2" style="display: none; border: solid #30467C;"></select>
	      <!--소분류-->
	      <select name="sel3" id="sel3" style="display: none; border: solid #30467C;"></select>
	    </div>
	
	    <div class="d-flex justify-content-center">
	      <button class="btn btn-primary" role="button" style="  margin-left: 260px;" onclick="c();">결과 확인</button>
	    </div>
    </div>
    </div>
<script src="jquery-3.6.0.min.js"></script>
<script> 

function c() {
	
	
	var allData;
	
	var select1 = document.getElementById("sel1");
	select1 = select1.options[select1.selectedIndex].value;
	console.log(select1)
	
	var select2 = document.getElementById("sel2");
	select2 = select2.options[select2.selectedIndex].value;
	console.log(select2)
	
	
	var select3 = document.getElementById("sel3");
	console.log(select3.length);
	
	if(select2.length > 10 ){
		allData = { "sel1": select1, "sel2": "0"};
		if(select3.length > 0){
			console.log("들어옴?");
			select3 = select3.options[select3.selectedIndex].value;
			allData = { "sel1": select1, "sel2": "0", "sel3":select3 };
		}else{
			allData = { "sel1": select1, "sel2": "0", "sel3":"0" };
		}
	}else{
		if(select3.length > 0){
			console.log("들어옴?");
			select3 = select3.options[select3.selectedIndex].value;
			allData = { "sel1": select1, "sel2": select2, "sel3":select3 };
		}else{
			allData = { "sel1": select1, "sel2": select2, "sel3":"0" };
		}
	}
	console.log(allData)
	
	
	
	$.ajax({
        url:"PTypeCon.do",
        type:'POST',
        data: allData,
        success:function(data){
        	if(data!=0){
            alert("완료!");
            console.log(data);
            //window.opener.location.reload();
            //self.close();
            location.href = 'ploginmain.jsp';
            }
        	else {
        		alert("실패!");
        		location.href = 'ploginmain.jsp';
        	}
        },
        error:function(){
            alert("서버요청실패");
            location.href = 'ploginmain.jsp';;
        }
    });
	
}
	
	</script>
	
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
