<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="jquery-3.6.0.min.js"></script>

    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- Bootstrap cdn 설정 -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link href="css/유형조사.css" rel="stylesheet" />
  </head>
  <body>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <br />
    <h1 class="userTitle">
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
          lg101: "컴퓨터공학",
          lg102: "IT일반",
          lg103: "컴퓨터입문/활용",
          lg104: "전산통계/해석",
          lg105: "OS",
          lg106: "네트워크",
          lg107: "보안/해킹",
          lg108: "데이터베이스",
          lg109: "게임",
          lg110: "웹 프로그래밍",
          lg111: "프로그래밍 언어",
          lg112: "모바일 프로그래밍",
          lg113: "OA/사무자동화",
          lg114: "웹사이트",
          lg115: "자격증/수험서",
        };

        // 중분류
        //sel1이 lg101일경우
        var sel2_1 = {
          md201: "컴퓨터공학/과학개론",
          md202: "소프트웨어공학",
          md203: "마이크로프로세서",
          md204: "자료구조/알고리즘",
          md205: "인공지능",
        };

        // 102
        var sel2_2 = {
          md206: "IT일반서",
        };

        // 103
        var sel2_3 = {
          md207: "컴퓨터입문/활용",
          md208: "인터넷입문/활용",
          md209: "컴퓨터교육",
        };

        // 104
        var sel2_4 = {
          md210: "전산통계/수치해석",
          md211: "전산통계/빅데이터",
        };

        // 105
        var sel2_5 = {
          md212: "widows",
          md213: "macos",
          md214: "임베디드",
          md215: "arm",
          md216: "유닉스",
          md217: "리눅스",
        };

        // 106
        var sel2_6 = {
          md218: "네트워크 일반",
          md219: "tcp/ip",
        };

        // 108
        var sel2_8 = {
          md220: "데이터베이스 일반",
          md221: "oracle",
          md222: "sql",
        };

        // 109
        var sel2_9 = {
          md223: "게임기획",
          md224: "모바일게임",
          md225: "게임개발",
        };

        // 110
        var sel2_10 = {
          md226: "웹프로그래밍 일반",
          md227: "html/css",
          md228: "javascript",
          md229: "jquery",
          md230: "xml",
          md231: "asp",
          md232: "jsp",
          md233: "php",
          md234: "ajax",
          md235: "flex",
        };

        // 111
        var sel2_11 = {
          md236: "프로그래밍 일반",
          md237: "파이썬",
          md238: "c",
          md239: "C++",
          md240: "C#",
          md241: "visualbasic",
          md242: "java",
          md243: ".net",
        };

        // 112
        var sel2_12 = {
          md244: "모바일 프로그래밍 일반",
          md245: "아이폰/아이패드",
          md246: "안드로이드",
          md247: "모바일게임",
        };

        // 113
        var sel2_13 = {
          md248: "엑셀",
          md249: "파워포인트",
        };

        // 114
        var sel2_14 = {
          md250: "웹사이트 기획",
          md251: "웹디자인",
          md252: "웹서비스",
          md253: "ux/ui",
          md254: "트위터/페이스북",
          md255: "블로그/홈페이지",
          md256: "쇼핑몰/전자상거래",
          md257: "웹제작도구",
        };

        // 115
        var sel2_15 = {
          md258: "사무자동화",
          md259: "정보 네트워크 보안",
          md260: "그래픽/디자인",
          md261: "기타자격증",
        };

        // 소분류
        //sel2가 md205일경우
        var sel3_1 = {
          sm301: "인공지능 일반",
          sm302: "딥러닝/머신러닝",
        };

        // 218
        var sel3_2 = {
          sm303: "네트워크 일반",
          sm304: "Server",
          sm305: "지리정보",
        };

        // 225
        var sel3_3 = {
          sm306: "유니티",
          sm307: "인리얼",
          sm308: "게임개발 일반",
        };

        // 243
        var sel3_4 = {
          sm309: ".NET 일반",
          sm310: "VisualC++.NET/VisualC#.NET",
          sm311: "ASP.NET",
        };

        // 258
        var sel3_5 = {
          sm312: "워드프로세서",
          sm313: "컴퓨터활용능력",
          sm314: "사무자동화 산업기사",
          sm315: "ITQ",
          sm316: "DIAT",
          sm317: "MOS",
        };

        // 259
        var sel3_6 = {
          sm318: "정보처리기사",
          sm319: "정보보안기사",
          sm320: "정보기기 운용기능사",
        };

        // 260
        var sel3_7 = {
          sm321: "컴퓨터그래픽스 운용기능사",
          sm322: "GTQ/웹디자인 기능사",
        };

        // 261
        var sel3_8 = {
          sm323: "전자상거래 관리사",
          sm324: "e-test",
          sm325: "코딩",
          sm326: "컴퓨터자격증 일반",
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
          if (option == "lg101") {
            subSelName = "sel2_1";
          } else if (option == "lg102") {
            subSelName = "sel2_2";
          } else if (option == "lg103") {
            subSelName = "sel2_3";
          } else if (option == "lg104") {
            subSelName = "sel2_4";
          } else if (option == "lg105") {
            subSelName = "sel2_5";
          } else if (option == "lg106") {
            subSelName = "sel2_6";
          } else if (option == "lg107") {
            // 운비 1) subSelName = "sel2_7"; ---> 객체가 없어서 에러가 발생해서
            // null값으로 집어넣고 retOption이라는 function안에 null값에 대한 처리를 집어넣었음!
            subSelName = null;
          } else if (option == "lg108") {
            subSelName = "sel2_8";
          } else if (option == "lg109") {
            subSelName = "sel2_9";
          } else if (option == "lg110") {
            subSelName = "sel2_10";
          } else if (option == "lg111") {
            subSelName = "sel2_11";
          } else if (option == "lg112") {
            subSelName = "sel2_12";
          } else if (option == "lg113") {
            subSelName = "sel2_13";
          } else if (option == "lg114") {
            subSelName = "sel2_14";
          } else if (option == "lg115") {
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
          if (option == "md205") {
            subSelName = "sel3_1";
          } else if (option == "md218") {
            subSelName = "sel3_2";
          } else if (option == "md225") {
            subSelName = "sel3_3";
          } else if (option == "md243") {
            subSelName = "sel3_4";
          } else if (option == "md258") {
            subSelName = "sel3_5";
          } else if (option == "md259") {
            subSelName = "sel3_6";
          } else if (option == "md260") {
            subSelName = "sel3_7";
          } else if (option == "md261") {
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
    <div class="d-flex justify-content-center">
      <!--대분류-->
      <select name="sel1" id="sel1">
        선택
      </select>
      <!--중분류-->
      <select name="sel2" id="sel2" style="display: none"></select>
      <!--소분류-->
      <select name="sel3" id="sel3" style="display: none"></select>
    </div>

    <div class="d-flex justify-content-center">
      <a class="btn btn-primary" href="#" role="button">결과 확인</a>
    </div>
  </body>
</html>