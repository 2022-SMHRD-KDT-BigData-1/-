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
<title>P+(Programming�� Planner�� ���ϴ�.)</title>
<link rel="icon" href="image/p+��.png" />
    <script src="jquery-3.6.0.min.js"></script>

    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- Bootstrap cdn ���� -->
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
        <link rel="stylesheet" href="css/��������.css" />
    
<!--     <link href="css/��������.css" rel="stylesheet" />
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
      <i class="fas fa-user-check"></i> ����� ���� ����
    </h1>

    <div class="study">ȸ������ �����ϰ� ���� �оߴ� �����ΰ���?</div>

    <br /><br /><br />

    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script>
      $(document).ready(function () {
        //��з�
        var sel1 = {
          " ": "����",
          p101: "��ǻ�Ͱ���",
          p102: "IT�Ϲ�",
          p103: "��ǻ���Թ�/Ȱ��",
          p104: "�������/�ؼ�",
          p105: "OS",
          p106: "��Ʈ��ũ",
          p107: "����/��ŷ",
          p108: "�����ͺ��̽�",
          p109: "����",
          p110: "�� ���α׷���",
          p111: "���α׷��� ���",
          p112: "����� ���α׷���",
          p113: "OA/�繫�ڵ�ȭ",
          p114: "������Ʈ",
          p115: "�ڰ���/���輭",
        };

        // �ߺз�
        //sel1�� p101�ϰ��
        var sel2_1 = {
          p201: "��ǻ�Ͱ���/���а���",
          p202: "����Ʈ�������",
          p203: "����ũ�����μ���",
          p204: "�ڷᱸ��/�˰���",
          p205: "�ΰ�����",
        };

        // 102
        var sel2_2 = {
          p206: "IT�Ϲݼ�",
        };

        // 103
        var sel2_3 = {
          p207: "��ǻ���Թ�/Ȱ��",
          p208: "���ͳ��Թ�/Ȱ��",
          p209: "��ǻ�ͱ���",
        };

        // 104
        var sel2_4 = {
          p210: "�������/��ġ�ؼ�",
          p211: "�������/������",
        };

        // 105
        var sel2_5 = {
          p212: "widows",
          p213: "macos",
          p214: "�Ӻ����",
          p215: "arm",
          p216: "���н�",
          p217: "������",
        };

        // 106
        var sel2_6 = {
          p218: "��Ʈ��ũ �Ϲ�",
          p219: "tcp/ip",
        };

        // 108
        var sel2_8 = {
          p220: "�����ͺ��̽� �Ϲ�",
          p221: "oracle",
          p222: "sql",
        };

        // 109
        var sel2_9 = {
          p223: "���ӱ�ȹ",
          p224: "����ϰ���",
          p225: "���Ӱ���",
        };

        // 110
        var sel2_10 = {
          p226: "�����α׷��� �Ϲ�",
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
          p236: "���α׷��� �Ϲ�",
          p237: "���̽�",
          p238: "c",
          p239: "C++",
          p240: "C#",
          p241: "visualbasic",
          p242: "java",
          p243: ".net",
        };

        // 112
        var sel2_12 = {
          p244: "����� ���α׷��� �Ϲ�",
          p245: "������/�����е�",
          p246: "�ȵ���̵�",
          p247: "����ϰ���",
        };

        // 113
        var sel2_13 = {
          p248: "����",
          p249: "�Ŀ�����Ʈ",
        };

        // 114
        var sel2_14 = {
          p250: "������Ʈ ��ȹ",
          p251: "��������",
          p252: "������",
          p253: "ux/ui",
          p254: "Ʈ����/���̽���",
          p255: "��α�/Ȩ������",
          p256: "���θ�/���ڻ�ŷ�",
          p257: "�����۵���",
        };

        // 115
        var sel2_15 = {
          p258: "�繫�ڵ�ȭ",
          p259: "���� ��Ʈ��ũ ����",
          p260: "�׷���/������",
          p261: "��Ÿ�ڰ���",
        };

        // �Һз�
        //sel2�� p205�ϰ��
        var sel3_1 = {
          p301: "�ΰ����� �Ϲ�",
          p302: "������/�ӽŷ���",
        };

        // 218
        var sel3_2 = {
          p303: "��Ʈ��ũ �Ϲ�",
          p304: "Server",
          p305: "��������",
        };

        // 225
        var sel3_3 = {
          p306: "����Ƽ",
          p307: "�θ���",
          p308: "���Ӱ��� �Ϲ�",
        };

        // 243
        var sel3_4 = {
          p309: ".NET �Ϲ�",
          p310: "VisualC++.NET/VisualC#.NET",
          p311: "ASP.NET",
        };

        // 258
        var sel3_5 = {
          p312: "�������μ���",
          p313: "��ǻ��Ȱ��ɷ�",
          p314: "�繫�ڵ�ȭ ������",
          p315: "ITQ",
          p316: "DIAT",
          p317: "MOS",
        };

        // 259
        var sel3_6 = {
          p318: "����ó�����",
          p319: "�������ȱ��",
          p320: "������� ����ɻ�",
        };

        // 260
        var sel3_7 = {
          p321: "��ǻ�ͱ׷��Ƚ� ����ɻ�",
          p322: "GTQ/�������� ��ɻ�",
        };

        // 261
        var sel3_8 = {
          p323: "���ڻ�ŷ� ������",
          p324: "e-test",
          p325: "�ڵ�",
          p326: "��ǻ���ڰ��� �Ϲ�",
        };

        //sel1�� �������� �޾ƿ� ���� �ֱ�����..
        // map�迭�� select �±� id�� �Ѱ��ָ� option �±׸� �ٿ���.
        // map[Ű�̸�] = �� Ű�� �ش��ϴ� value�� ��ȯ�Ѵ�.
        //retOption(�����͸�, select�Լ� id)
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
          // ��� 2)------- ù��° select ���� �ÿ��� ������ ���õǾ��ִ� �ֵ� �����ֱ� ���ؼ�
          // ------- sel3�̶� sel2 �����
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
            // ��� 1) subSelName = "sel2_7"; ---> ��ü�� ��� ������ �߻��ؼ�
            // null������ ����ְ� retOption�̶�� function�ȿ� null���� ���� ó���� ����־���!
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
            // ��� 3) sel1 ������ Ŭ������ �� � ����� ������ ����
            $("#sel2").hide();
            $("#sel3").hide();
            return;
          }
          $("#sel2").show();
          retOption(eval(subSelName), "sel2");
        });
        retOption(sel1, "sel1");

        $("select[id='sel2']").on("change", function () {
          // ��� 4) ------- �ι�° select ���� �ÿ��� ������ ���õǾ��ִ� �ֵ� �����ֱ� ���ؼ�
          // ------- sel3 �����
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
      <!--��з�-->
      <select name="sel1" id="sel1" style="border: solid #fbb710;
      ">
        ����
      </select>
      <!--�ߺз�-->
      <select name="sel2" id="sel2" style="display: none; border: solid #fbb710; "></select>
      <!--�Һз�-->
      <select name="sel3" id="sel3" style="display: none; border: solid #fbb710;"></select>
    </div>

    <div class="d-flex justify-content-center">
      <a class="btn btn-primary" href="#" role="button" style="  margin-left: 260px;
      ">��� Ȯ��</a>
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
