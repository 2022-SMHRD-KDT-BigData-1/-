<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login V2</title>
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
    <a class="navbar-brand" href="poutmain.jsp">P+</a>
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
          <li class="nav-item active">
            <a class="nav-link" href="plogin.jsp">로그인</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">회원가입</a>
          </li>
        </ul>
    </div>
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