<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
<title>P+(Programming�� Planner�� ���ϴ�.)</title>
<link rel="icon" href="image/p+��.png" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
      <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/bootstrap/css/bootstrap.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="fonts1/font-awesome-4.7.0/css/font-awesome.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="fonts1/iconic/css/material-design-iconic-font.min.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/css-hamburgers/hamburgers.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/animsition/css/animsition.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/select2/select2.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/daterangepicker/daterangepicker.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css1/util.css" />
    <link rel="stylesheet" type="text/css" href="css1/main.css" />
    <!--===============================================================================================-->
 	
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
            <a class="nav-link dropdown-toggle" href="�н��÷���.jsp" >�н��÷���</a>
            <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li class="dropdown-header">������</li>
      <hr>
      <li><a href="�����ٸ�_���.jsp">���</a></li>
      <li><a href="��ü�����ٸ��.jsp">��ü ������ ���</a></li>
              <li><a href="��ü�����͸��.jsp">��ü ������ ���</a></li>
              <li><a href="��ü�ϱ���.jsp">��ü �ϱ� ���</a></li>
     <br>
      <li class="divider"></li>
      <li class="dropdown-header">����</li>
      <hr>
      <li><a href="�������4��.jsp">���</a></li>
      <li><a href="#">��ü ���� ���</a></li>
      <li><a href="��ü�����͸��.jsp">��ü ������ ���</a></li>
      <li><a href="��ü�ϱ���.jsp">��ü �ϱ� ���</a></li>
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

    <div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
            <form class="login100-form validate-form">
                <span class="login100-form-title p-b-26"> ȸ������ ���� </span>
                <span class="login100-form-title p-b-48">
                  <!-- <i class="zmdi zmdi-font"></i> -->
                  P+
                </span>
     
                <div
                  class="wrap-input100 validate-input"
                  data-validate="Valid email is: a@b.c"
                >
                  <input class="input100" type="text" name="id" />
                  <span
                    class="focus-input100"
                    data-placeholder="���̵�"
                  ></span>
                </div>
    
                <div
                  class="wrap-input100 validate-input"
                  data-validate="Enter password"
                >
                  <span class="btn-show-pass">
                    <i class="zmdi zmdi-eye"></i>
                  </span>
                  <input class="input100" type="password" name="pass" />
                  <span
                    class="focus-input100"
                    data-placeholder="���ο� ��й�ȣ�� �Է��ϼ���."
                  ></span>
                </div>
    
                <div
                  class="wrap-input100 validate-input"
                  data-validate="Valid email is: a@b.c"
                >
                  <input class="input100" type="text" name="nick" />
                  <span
                    class="focus-input100"
                    data-placeholder="���ο� �г����� �Է��ϼ���."
                  ></span>
                </div>
    
        
    
                <div class="container-login100-form-btn">
                  <div class="wrap-login100-form-btn">
                    <div class="login100-form-bgbtn"></div>
                    <button class="login100-form-btn" onclick="location.href='#'">�����Ϸ�</button >
                  </div>
                </div>
    
    
                </div>
              </form>
        </div>
      </div>
    </div>

    <div id="dropDownSelect1"></div>

    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js1/main.js"></script>
  </body>
</html>
