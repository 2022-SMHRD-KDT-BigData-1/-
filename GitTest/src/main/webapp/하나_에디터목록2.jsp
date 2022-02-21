<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>Amado - Furniture Ecommerce Template | Shop</title>

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

   
  </head>

  <body>
    <header
      class="navbar navbar-expand navbar-dark bg-dark bd-navbar fixed-top">
      <a class="navbar-brand" href="로그인후초기화면.jsp">P+</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarNav" aria-controls="navbarNav"
         aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end"
         id="navbarNav">
         <ul class="navbar-nav">
            <li class="nav-item active"><a class="nav-link" href="#">사이트
                  소개</a></li>
            <li class="nav-item active"><a class="nav-link" href="컨텐츠추천.jsp">컨텐츠
                  추천</a></li>
            <li class="nav-item active"><a class="nav-link" href="학습플래너.jsp">학습플래너</a>
            </li>
            <li class="nav-item active"><a class="nav-link" href="#">포트폴리오</a>
            </li>
            <li class="nav-item active"><a class="nav-link" href="#">마이페이지</a>
            </li>
            <li class="nav-item active"><a class="nav-link" href="#">로그아웃</a>
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
              <li class="active"><a href="#">달력</a></li>
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
                <a href="#"
                  >작성</a
                >
              </li>
              <li>
                <a href="#"
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
              <li><a href="#">작성</a></li>
              <li><a href="#">목록</a></li>
            </ul>
          </div>

          <br />

          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="#">학습진행상황</a></li>
              <hr />
            </ul>
            <!-- <br><br><br><br><br><br>
            <br><br><br><br> -->
          </div>
        </div>
      </div>
      <div
        style="width: 80%; margin: 50px; margin-bottom: 10%; margin-top: 20px;" >
      <br>
        <!-- <h1>스케줄 등록</h1> -->
        <!-- 에디터 목록 -->
  <div class="container">
    <h1 style="text-align: center;">
     MY 에디터
     <i class="fas fa-laptop-code"></i>
    </h1>
    <br>
    <div class="container" >
      <table class="table table-bordered table-hover table-sm text-center "  >
        <thead class="table-warning ">
          <tr>
          <th></th>
          <th class="text-center">No.</th>
          <th class="text-center">작성일</th>
          <th class="text-center">스케줄명</th>
          <th class="text-center">에디터 제목</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>1</td>
            <td>2022.01.11</td>
            <td>자바</td>
            <td>for문</td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>2</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>3</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>4</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>5</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>6</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>7</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>8</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>9</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="form-check">
                <input class="form-check-input" type="radio"
                  name="flexRadioDefault" id="flexRadioDefault1"> <label
                  class="form-check-label" for="flexRadioDefault1"> </label>
              </div></td>
            <td>10</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </tbody>
      </table>
    </div>

    <br>
    <div class="page">
      <div class="text-center">
        <a href="#" class="btn btn-dark" con>선택 수정</a> <a href="#"
          class="btn btn-dark">선택 삭제</a>
          <a href="#"
          class="btn btn-dark">선택 보기</a>
      </div>
      <br>
      <nav aria-label="Page navigation example">
        <div class="text-center">
          <ul class="pagination" style="justify-content: center;">
            <li class="page-item"><a class="page-link" href="#"
              aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#"
              aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
                class="sr-only">Next</span>
            </a></li>
          </ul>
        </div>
      </nav>
      </div>
</div>

        <br />
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"
        ></script>
      </div>
    </div>

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
      <div class="container">
        <div class="row align-items-center">
          <!-- Single Widget Area -->
          <div class="col-12 col-lg-4">
            <div class="single_widget_area">
              <!-- Logo -->
              <div class="footer-logo mr-50">
                <a href="index.html"
                  ><img src="img/core-img/logo2.png" alt=""
                /></a>
              </div>
              <!-- Copywrite Text -->
              <p class="copywrite">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;
                <script>
                  document.write(new Date().getFullYear());
                </script>
                All rights reserved | This template is made with
                <i class="fa fa-heart-o" aria-hidden="true"></i> by
                <a href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->&
                Re-distributed by
                <a href="https://themewagon.com/" target="_blank">Themewagon</a>
              </p>
            </div>
          </div>
          <!-- Single Widget Area -->
          <div class="col-12 col-lg-8">
            <div class="single_widget_area">
              <!-- Footer Menu -->
              <div class="footer_menu">
                <nav class="navbar navbar-expand-lg justify-content-end">
                  <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#footerNavContent"
                    aria-controls="footerNavContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <i class="fa fa-bars"></i>
                  </button>
                  <div class="collapse navbar-collapse" id="footerNavContent">
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item active">
                        <a class="nav-link" href="index.html">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="shop.html">Shop</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="product-details.html"
                          >Product</a
                        >
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="cart.html">Cart</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="checkout.html">Checkout</a>
                      </li>
                    </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
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
