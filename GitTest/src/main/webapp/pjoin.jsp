<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
   <!-- Title  -->
<title>P+(Programming에 Planner를 더하다.)</title>
<!-- Favicon  -->
<link rel="icon" href="image/p+만.png" />
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
   
   <!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">
    </head>
    
 
  <body>

    <header id="header" class="fixed-top header-scrolled">
	
			<nav id="navbar" class="navbar" style="justify-content: end">
			<a style="padding-right: 1500px" href="ploginmain.jsp"><img style="width: 40px"
				src="image/p+만.png"></a>
				<ul style= "padding-right:30px">
					<li><a class="nav-link scrollto" href="#"
						style="text-decoration: none">사이트 소개</a></li>
					<li><a class="nav-link scrollto" href="plogin.jsp"
						style="text-decoration: none">로그인</a></li>
					<li><a class="nav-link scrollto" href="pjoin.jsp"
						style="text-decoration: none">회원가입</a></li>
						<li></li>
				</ul>
			</nav>
		
	</header>

    <div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
          <form class="login100-form validate-form" action="PJoinCon.do" method="post">
            <span class="login100-form-title p-b-26"> Welcome </span>
            <span class="login100-form-title p-b-48">
              <!-- <i class="zmdi zmdi-font"></i> -->
              P+
            </span>

             <div
              class="wrap-input100 validate-input"
              data-validate="Valid email is: a@b.c"
            >
              <input class="input100" type="text" name="id" id="input_id" placeholder="아이디를 입력하세요."/>
               <span
                class="focus-input100"
                data-placeholder=""
              ><div style = "padding-left:80%; padding-top:10px"><font id="checkId" size="2"></font></div></span>
              
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Enter password"
            >
              <span class="btn-show-pass">
                <i class="zmdi zmdi-eye"></i>
              </span>
              <input class="input100" type="password" name="pw" placeholder="비밀번호를 입력하세요."/>
              <span
                class="focus-input100"
                data-placeholder=""
              ></span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Valid email is: a@b.c"
            >
              <input class="input100" type="text" name="nick" id="input_nick" placeholder="닉네입을 입력하세요."/>
              <span
                class="focus-input100"
                data-placeholder=""
              ><div style = "padding-left:80%; padding-top:10px"><font id="checkNick" size="2"></font></div></span>
              
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Valid email is: a@b.c"
            >
              <input class="input100" type="text" name="name" placeholder="이름을 입력하세요."/>
              <span
                class="focus-input100"
                data-placeholder=""
              ></span>
            </div>
            <div class="container-login100-form-btn">
              <div class="wrap-login100-form-btn">
                <div class="login100-form-bgbtn"></div>
              <!--  <input type="submit" class="login100-form-btn" value="회원가입"> --> 
              
                 <button type="submit" class="login100-form-btn" onclick="location.href='PJoinCon.do'">회원가입</button > 
              </div>
            </div>


            </div>
          </form>
          
        </div>
      </div>
    </div>
    <font id="checkId" size="2"></font>
    <font id="checkNick" size="2"></font>

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
    <script src="jquery-3.6.0.min.js"></script>
   <script> 
   $('#input_id').keyup(function(){
      let memberid=$('#input_id').val();
      $.ajax({
         url : "IdCheck.do",
         type: "post",
         data : {memberid : memberid},
         dataType : 'json',
         success : function(result){
            if(result==0){
               $("#checkId").html('사용불가');
               $("#checkId").attr('color', 'red');
            } else {
               $("#checkId").html('사용가능');
               $("#checkId").attr('color', 'green');
            }
         },
         error : function(){
            alert("서버요청실패");
         }
      })
   })
   
   $('#input_nick').keyup(function(){
      let membernick=$('#input_nick').val();
      $.ajax({
         url : "NickCheck.do",
         type: "post",
         data : {membernick : membernick},
         dataType : 'json',
         success : function(result){
            if(result==0){
               $("#checkNick").html('사용불가');
               $("#checkNick").attr('color', 'red');
            } else {
               $("#checkNick").html('사용가능');
               $("#checkNick").attr('color', 'green');
            }
         },
         error : function(){
            alert("서버요청실패");
         }
      })
   })

   </script>
  </body>
</html>