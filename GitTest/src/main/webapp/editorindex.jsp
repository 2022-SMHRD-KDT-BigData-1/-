<%@page import="com.pplus.model.PMemberDTO"%>
<%@page import="com.pplus.model.EditorDTO2"%>
<%@page import="com.pplus.model.EditorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.EditorDAO"%>
<%@page import="com.pplus.model.ScheduleDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%
	ScheduleDTO schedule = (ScheduleDTO)session.getAttribute("schedule");
	PMemberDTO member = (PMemberDTO) session.getAttribute("member");

	EditorDAO editorDAO = new EditorDAO();
	
	int pageSize = 10;
	String pageNum = request.getParameter("pagenum");

	
	if (pageNum == null){ // 클릭한게 없으면 1번 페이지
		pageNum = "1";
	}
	
	int currentPage = Integer.parseInt(pageNum);
	
	// 해당 페이지에서 시작할 레코드 / 마지막 레코드
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	
	int count = 0;
	count = editorDAO.getCount(schedule.getSchedule_num()); // 데이터베이스에 저장된 총 갯수
	
	if(count > 0){
		ArrayList<EditorDTO2> list = editorDAO.getList(startRow, endRow, member, schedule);
		session.setAttribute("editorpase", list);
	}

%>
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
    <title>P+ - editor</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico" />

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css" />
    <link rel="stylesheet" href="style.css" />
    
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
            <a class="nav-link dropdown-toggle" href="학습플래너.jsp" >학습플래너</a>
            <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li class="dropdown-header">스케줄</li>
      <hr>
      <li><a href="스케줄만_등록.jsp">등록</a></li>
      <li><a href="전체스케줄목록.jsp">전체 스케줄 목록</a></li>
              <li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
              <li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
     <br>
      <li class="divider"></li>
      <li class="dropdown-header">일정</li>
      <hr>
      <li><a href="일정등록4번.jsp">등록</a></li>
      <li><a href="#">전체 일정 목록</a></li>
      <li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
      <li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
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

     

      <div class="shop_sidebar_area">
        <!-- ##### Single Widget ##### -->
        <div class="widget catagory mb-50">
         <h6 class="widget-title mb-30">학습플래너</h6>
         <br>
          <!-- Widget Title -->
          <h6 class="widget-title mb-30">스케줄</h6>

          <!--  Catagories  -->
          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="스케줄만_등록.jsp">등록</a></li>
              <hr />
              <li><a href="#">목록</a></li>
              <li><a href="전체스케줄목록.jsp">전체 스케줄 목록</a></li>
              <li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
              <li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
            </ul>
          </div>
        </div>

        <!-- ##### Single Widget ##### -->
        <div class="widget category mb-50">
          <!-- Widget Title -->
          <h6 class="widget-title mb-30">일정</h6>

          <!-- Widget Title -->

          <div class="catagories-menu">
            <ul>
              <li class="active"><a href="일정등록4번.jsp">등록</a></li>
              <hr />
              <li><a href="#">목록</a></li>
              <li><a href="#">전체 일정 목록</a></li>
              <li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
              <li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
            </ul>
          </div>
        </div>
      </div>



		<div style="width: 60%; margin-top: 150px; margin-left: 300px;">
			<!-- Option 1: Bootstrap Bundle with Popper -->
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>



			<br>
			<h1 style="text-align: center;">
				MY 에디터 <i class="fas fa-laptop-code"></i>
			</h1>
			<br>
			<div class="container">
			<c:set value="0" var="j" />
				<table
					class="table table-bordered table-hover table-sm text-center ">

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
					<c:forEach var="i" items="${sessionScope.editorpase }">
						<tr>
							<td><div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> </label>
								</div></td>
							<td>
								<input value="${i.editor_num }" style="display: none;" name="num">
								<input value="${i.member_nick }" style="display: none;" name="nick">
								${j = j + 1}
							</td>
							<td>${i.editor_date}</td>
							<td>${schedule.schedule_name }</td>
							<td>${i.editor_title }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>

			<br>
			<div class="page">
				<div class="text-center">
					<a href="#" class="btn btn-dark">선택 완료</a>
				</div>
				<br>
				<nav aria-label="Page navigation example">
					<div class="text-center">
						<ul class="pagination" style="justify-content: center;">
							
							<c:choose>
								<c:when test="${count > 0}">
								<c:set value="${count / pageSize + (count%pageSize == 0 ? 0 : 1)}" var="pageCount" />
								<c:set value="10" var="pageBlock" />
									<li class="page-item">
										<a class="page-link" href="#">${i}</a>
									</li>
								<c:set value="${((currentPage-1)/pageBlock)*pageBlock+1 }" var="startPage"/>
								<c:set value="${startPage + pageBlock - 1 }" var="endPage"/>
								<c:choose>
									<c:when test="${endPage > pageCount}">
										<c:set value="${endPage = pageCount }" var="endPage"/>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${startPage > pageBlock}">
										<li class="page-item">
											<a class="page-link" href="editorindex.jsp?pageNum=${startPage - 10 }" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
											</a>
										</li>
									</c:when>
								</c:choose>
								<c:forEach var="i" begin="${startPage}" end="${endPage + 1 }">
									<c:choose>
										<c:when test="${i == currentPage}">
											${i}
										</c:when>
										<c:otherwise>
											<a href="editorindex.jsp?pageNum=${i }">${i}</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:choose>
									<c:when test="${endPage < pageCount }">
										<li class="page-item">
											<a class="page-link" href="editorindex.jsp?pageNum=${startPage + 10 }" aria-label="Next"> 
												<span aria-hidden="true">&raquo;</span> 
												<span class="sr-only">Next</span>
											</a>
										</li>
									</c:when>
								</c:choose>
								</c:when>
							</c:choose>
							
						</ul>
					</div>
				</nav>
			</div>
	</div>

   

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
