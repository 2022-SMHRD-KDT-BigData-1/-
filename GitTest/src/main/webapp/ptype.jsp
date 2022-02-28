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
    
    <!-- ��ܹ� css -->
<link href="assets/css/style.css" rel="stylesheet">
  </head>

  <body>
   	
   <div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="image/p+��1.png" alt="" /></a>
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

				<li clas="nav-item"><a class="nav-link" href="#">����Ʈ �Ұ�</a></li>
				<li clas="nav-item"><a class="nav-link" href="��������õ.jsp">������
						��õ</a></li>
				<li clas="nav-item"><a class="nav-link" href="plannermain.jsp">�н��÷���</a></li>
				<li clas="nav-item"><a class="nav-link" href="#">��Ʈ������</a></li>
				<li clas="nav-item"><a class="nav-link" href="mypg_main.jsp">����������</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">�α׾ƿ�</a></li>
			</ul>
		</div>
		<header id="header" class="fixed-top header-scrolled">
			<nav id="navbar" class="navbar">
				<a style="padding-left: 15px" href="ploginmain.jsp"><img
					style="width: 50px" src="image/p+��1.png"></a>
				<ul style="padding-right: 30px">
					<li><a class="nav-link scrollto" href="#"
						style="text-decoration: none">����Ʈ �Ұ�</a></li>
					<li></li>
					<div class="dropdown nav-item active">
						<a style="text-decoration: none" class="nav-link dropdown-toggle"
							href="��������õ.jsp">������ ��õ</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="ptype.jsp">���� Ȯ�� ��
									��˻�</a></li>
							<li><a class="dropdown-item" href="search1.jsp">å �˻�</a></li>
						</ul>
					</div>

					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="plannermain.jsp">�н��÷���</a>
						<span class="caret"></span>

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
							<li><a href="dayplantodayindex.jsp">��ü ���� ���</a></li>

							<br>
							<li class="divider"></li>
							<li class="dropdown-header">��ȸ</li>
							<hr>
							<li><a href="editorallindex.jsp">��ü ������ ���</a></li>
							<li><a href="diaryallindex.jsp">��ü �ϱ� ���</a></li>
							<li><a href="todoallindex.jsp">��ü �� �� ���</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="#">��Ʈ������</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="#">���</a></li>

							<li><a class="dropdown-item" href="#">���</a></li>
						</ul>
					</div>
					<li></li>
					<div class="dropdown nav-item active">
						<a class="nav-link dropdown-toggle" href="mypg_main.jsp">����������</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="pupdate.jsp">ȸ������
									����/Ż��</a></li>
							<li><a class="dropdown-item" href="achieveall.jsp">��ü
									�н���Ȳ ��ȸ</a></li>
							<li><a class="dropdown-item" href="mybookwish.jsp">���ø���Ʈ</a></li>
						</ul>
					</div>
					<li class="nav-item active"><a class="nav-link"
						href="plogout.jsp">�α׾ƿ�</a></li>


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
      <i class="fas fa-user-check"></i> ����� ���� ����
    </h1>

    <div class="study">ȸ������ �����ϰ� ���� �оߴ� �����ΰ���?</div>

    <br /><br /><br />

    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script>
      $(document).ready(function () {
        //��з�
        var sel1 = {
          null: "����",
          P101: "��ǻ�Ͱ���",
          P102: "IT�Ϲ�",
          P103: "��ǻ���Թ�/Ȱ��",
          P104: "�������/�ؼ�",
          P105: "OS",
          P106: "��Ʈ��ũ",
          P107: "����/��ŷ",
          P108: "�����ͺ��̽�",
          P109: "����",
          P110: "�� ���α׷���",
          P111: "���α׷��� ���",
          P112: "����� ���α׷���",
          P113: "OA/�繫�ڵ�ȭ",
          P114: "������Ʈ",
          P115: "�ڰ���/���輭",
        };

        // �ߺз�
        //sel1�� p101�ϰ��
        var sel2_1 = {
          P201: "��ǻ�Ͱ���/���а���",
          P202: "����Ʈ�������",
          P203: "����ũ�����μ���",
          P204: "�ڷᱸ��/�˰���",
          P205: "�ΰ�����",
        };

        // 102
        var sel2_2 = {
          P206: "IT�Ϲݼ�",
        };

        // 103
        var sel2_3 = {
          P207: "��ǻ���Թ�/Ȱ��",
          P208: "���ͳ��Թ�/Ȱ��",
          P209: "��ǻ�ͱ���",
        };

        // 104
        var sel2_4 = {
          P210: "�������/��ġ�ؼ�",
          P211: "�������/������",
        };

        // 105
        var sel2_5 = {
          P212: "widows",
          P213: "macos",
          P214: "�Ӻ����",
          P215: "arm",
          P216: "���н�",
          P217: "������",
        };

        // 106
        var sel2_6 = {
          P218: "��Ʈ��ũ �Ϲ�",
          P219: "tcp/ip",
        };

        // 108
        var sel2_8 = {
          P220: "�����ͺ��̽� �Ϲ�",
          P221: "oracle",
          P222: "sql",
        };

        // 109
        var sel2_9 = {
          P223: "���ӱ�ȹ",
          P224: "����ϰ���",
          P225: "���Ӱ���",
        };

        // 110
        var sel2_10 = {
          P226: "�����α׷��� �Ϲ�",
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
          P236: "���α׷��� �Ϲ�",
          P237: "���̽�",
          P238: "c",
          P239: "C++",
          P240: "C#",
          P241: "visualbasic",
          P242: "java",
          P243: ".net",
        };

        // 112
        var sel2_12 = {
          P244: "����� ���α׷��� �Ϲ�",
          P245: "������/�����е�",
          P246: "�ȵ���̵�",
          P247: "����ϰ���",
        };

        // 113
        var sel2_13 = {
          P248: "����",
          P249: "�Ŀ�����Ʈ",
        };

        // 114
        var sel2_14 = {
          P250: "������Ʈ ��ȹ",
          P251: "��������",
          P252: "������",
          P253: "ux/ui",
          P254: "Ʈ����/���̽���",
          P255: "��α�/Ȩ������",
          P256: "���θ�/���ڻ�ŷ�",
          P257: "�����۵���",
        };

        // 115
        var sel2_15 = {
          P258: "�繫�ڵ�ȭ",
          P259: "���� ��Ʈ��ũ ����",
          P260: "�׷���/������",
          P261: "��Ÿ�ڰ���",
        };

        // �Һз�
        //sel2�� p205�ϰ��
        var sel3_1 = {
          P301: "�ΰ����� �Ϲ�",
          P302: "������/�ӽŷ���",
        };

        // 218
        var sel3_2 = {
          P303: "��Ʈ��ũ �Ϲ�",
          P304: "Server",
          P305: "��������",
        };

        // 225
        var sel3_3 = {
          P306: "����Ƽ",
          P307: "�θ���",
          P308: "���Ӱ��� �Ϲ�",
        };

        // 243
        var sel3_4 = {
          P309: ".NET �Ϲ�",
          P310: "VisualC++.NET/VisualC#.NET",
          P311: "ASP.NET",
        };

        // 258
        var sel3_5 = {
          P312: "�������μ���",
          P313: "��ǻ��Ȱ��ɷ�",
          P314: "�繫�ڵ�ȭ ������",
          P315: "ITQ",
          P316: "DIAT",
          P317: "MOS",
        };

        // 259
        var sel3_6 = {
          P318: "����ó�����",
          P319: "�������ȱ��",
          P320: "������� ����ɻ�",
        };

        // 260
        var sel3_7 = {
          P323: "��ǻ�ͱ׷��Ƚ� ����ɻ�",
          P324: "GTQ/�������� ��ɻ�",
        };

        // 261
        var sel3_8 = {
          P325: "���ڻ�ŷ� ������",
          P326: "e-test",
          P327: "�ڵ�",
          P328: "��ǻ���ڰ��� �Ϲ�",
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
            // ��� 1) subSelName = "sel2_7"; ---> ��ü�� ��� ������ �߻��ؼ�
            // null������ ����ְ� retOption�̶�� function�ȿ� null���� ���� ó���� ����־���!
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
	      <!--��з�-->
	      <select name="sel1" id="sel1" style="border: solid #30467C;
	      ">
	        ����
	      </select>
	      <!--�ߺз�-->
	      <select name="sel2" id="sel2" style="display: none; border: solid #30467C;"></select>
	      <!--�Һз�-->
	      <select name="sel3" id="sel3" style="display: none; border: solid #30467C;"></select>
	    </div>
	
	    <div class="d-flex justify-content-center">
	      <button class="btn btn-primary" role="button" style="  margin-left: 260px;" onclick="c();">��� Ȯ��</button>
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
			console.log("����?");
			select3 = select3.options[select3.selectedIndex].value;
			allData = { "sel1": select1, "sel2": "0", "sel3":select3 };
		}else{
			allData = { "sel1": select1, "sel2": "0", "sel3":"0" };
		}
	}else{
		if(select3.length > 0){
			console.log("����?");
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
            alert("�Ϸ�!");
            console.log(data);
            //window.opener.location.reload();
            //self.close();
            location.href = 'ploginmain.jsp';
            }
        	else {
        		alert("����!");
        		location.href = 'ploginmain.jsp';
        	}
        },
        error:function(){
            alert("������û����");
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
