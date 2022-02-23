<%@page import="com.pplus.model.ScheduleDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@page import="com.pplus.model.ScheduleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%
   PMemberDTO member=(PMemberDTO)session.getAttribute("member");
   ArrayList<ScheduleDTO> schedulelist = (ArrayList<ScheduleDTO>)session.getAttribute("schedulelist");
   ScheduleDAO scheduleDAO = new ScheduleDAO();
   


	int pageSize = 10;
	
  	int total =schedulelist.size();
   
  	pageContext.setAttribute("total", total);
   
   	int lastpage = (int)Math.ceil((double)total/10);
   	pageContext.setAttribute("lastpage", lastpage);
   
   	int rownum=total;
   	pageContext.setAttribute("rownum", rownum);
   
   	String view_page= request.getParameter("viewpage");// 현재 페이지
   	if ( view_page==null ){
     	    view_page="1";
   	}
   	int viewpage = Integer.parseInt(view_page);
   
   
   	schedulelist = scheduleDAO.scheduleSelectAny(member.getMember_nick(), viewpage);
   
   	pageContext.setAttribute("schedulelist", schedulelist);
   %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>P+ - schedule</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico" />

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css" />
<link rel="stylesheet" href="style.css" />

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
   crossorigin="anonymous"></script>

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



		<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<h6 class="widget-title mb-30">학습플래너</h6>
				<br>
				<!-- Widget Title -->
				<!--<h6 class="widget-title mb-30">스케줄</h6>
 -->
				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active" style="color: #fbb710"><a>스케줄</a></li>
						<hr />
						<li><a href="스케줄만_등록.jsp">등록</a></li>
						<li><a href="전체스케줄목록.jsp">전체 스케줄 목록</a></li>

					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">
				<!-- Widget Title -->
				<!--<h6 class="widget-title mb-30">일정</h6>
 -->
				<!-- Widget Title -->

				<div class="catagories-menu">
					<ul>
						<li class="active" style="color: #fbb710"><a>일정</a></li>
						<hr />
						<li><a href="일정등록4번.jsp">등록</a></li>
						<li><a href="#">전체 일정 목록</a></li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">
				<!-- Widget Title -->
				<!-- <h6 class="widget-title mb-30">일정</h6>
 -->
				<!-- Widget Title -->

				<div class="catagories-menu">
					<ul>
						<li class="active" style="color: #fbb710"><a>조회</a></li>
						<hr />
						<li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
						<li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
						<li><a href="#">전체 할 일 목록</a></li>

					</ul>
				</div>
			</div>
		</div>


     <div class="container" style="padding-top: 90px">
			<div>

         <h1 style="text-align: center;">
            MY 스케줄 <i class="far fa-solid fa-calendar-check"></i>
         </h1>
         <br>
         <div class="container">
         <c:set value="<%= (viewpage-1)*10%>" var="j" />
            <table
               class="table table-bordered table-hover table-sm text-center ">


               <thead class="table-warning ">
            <tr>
                     <th class="text-center">선택</th>
                     <th class="text-center">No.</th>
                     <th class="text-center">스케줄 이름</th>
                     <th class="text-center">시작 날 - 끝나는 날</th>
                     <th class="text-center">책 이름</th>
                     <th class="text-center">하루 학습 분량</th>
                     <th class="text-center">달성률</th>
                     <th class="text-center">스케줄로 이동</th>
                  </tr>
               </thead>

               <tbody>
               <c:forEach var="schedule" items="${schedulelist }">
                  <tr>
                     <td>
                        <div class="form-check">
                           <input class="form-check-input" type="radio"
                              name="flexRadioDefault" id="flexRadioDefault1"> <label
                              class="form-check-label" for="flexRadioDefault1"> </label>
                        </div>
                     </td>
                     <td>${j = j + 1}</td>
                     <td>${schedule.schedule_name }</td>
                     <td>${schedule.schedule_start } ~ ${schedule.schedule_end }</td>
                     <td>${schedule.book_title }</td>
                     <td>${schedule.schedule_day_page }</td>
                     <td></td>
                     <td><a href="ScheduleIndexCon.do?num=${schedule.schedule_num }"><button>이동</button></a></td>
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
                  
                    <%
								if(viewpage > 0){
									// 총 페이지의 수
									int pageCount = lastpage;
									
									// 한 페이지에 보여줄 페이지 블럭(링크) 수
									int pageBlock = 10;
									// 한 페이지에 보여줄 시작 및 끝 번호(예 : 1, 2, 3 ~ 10 / 11, 12, 13 ~ 20)
									int startPage = ((viewpage-1)/pageBlock)*pageBlock+1;
									int endPage = startPage + pageBlock - 1;
									
									// 마지막 페이지가 총 페이지 수 보다 크면 endPage를 pageCount로 할당
									if(endPage > pageCount){
										endPage = pageCount;
									}
									
									if(startPage > pageBlock){ // 페이지 블록수보다 startPage가 클경우 이전 링크 생성
								
							
							%>
										<li class="page-item">
											<a class="page-link" href="scheduleindex.jsp?viewpage=<%= startPage - 10 %>" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
											</a>
										</li>
									
							<%
								}
										for(int i=startPage; i <= endPage; i++){ // 페이지 블록 번호
											if(i == viewpage){ // 현재 페이지에는 링크를 설정하지 않음
							
							%>				
											<%=i %>
											
								<%									
											}else{ // 현재 페이지가 아닌 경우 링크 설정
								%>	
											<li class="page-item">
												<a class="page-link" href="scheduleindex.jsp?viewpage=<%=i%>"><%=i %></a>
											</li>
											<%	
								}
							} // for end
							
							if(endPage < pageCount){ // 현재 블록의 마지막 페이지보다 페이지 전체 블록수가 클경우 다음 링크 생성
					%>
										<li class="page-item">
											<a class="page-link" href="scheduleindex.jsp?viewpage=${startPage + 10 }" aria-label="Next"> 
												<span aria-hidden="true">&raquo;</span> 
												<span class="sr-only">Next</span>
											</a>
										</li>
										<%}
							}
							%>
                     
                     
                  </ul>
               </div>
            </nav>
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
   <script src="js/plugins.js"></script>
   <!-- Active js -->
   <script src="js/active.js"></script>
</body>
</html>