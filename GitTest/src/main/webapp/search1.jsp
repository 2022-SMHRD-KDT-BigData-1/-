<%@page import="com.pplus.model.BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
BookDAO bookDAO = new BookDAO();
ArrayList<BookDTO> bklist = new ArrayList<BookDTO>();

int pageSize = 10;
String pageNum = request.getParameter("pageNum");
String searchWord = request.getParameter("searchWord");
pageContext.setAttribute("searchWord", searchWord);


if (pageNum == null){ // 클릭한게 없으면 1번 페이지
	pageNum = "1";
}

int currentPage = Integer.parseInt(pageNum);

// 해당 페이지에서 시작할 레코드 / 마지막 레코드
int startRow = (currentPage - 1) * pageSize + 1;
int endRow = currentPage * pageSize;

int count = 0;
count = bookDAO.getCount(searchWord); // 데이터베이스에 저장된 총 갯수

 
if(count > 0){
	bklist = bookDAO.getList(startRow, endRow, searchWord);
	pageContext.setAttribute("bklist", bklist);
	
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>P+(Programming에 Planner를 더하다.)</title>
<!-- Favicon  -->
<link rel="icon" href="image/p+만.png" />
<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css"/>
<link rel="stylesheet" href="style.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" />


<style>
body {
    background: #d1d5db
}
.height {
	height: 100vh
}

.form {
	position: relative
}

.form .fa-search {
	position: absolute;
	top: 20px;
	left: 20px;
	color: #9ca3af
}

.form span {
	position: absolute;
	right: 17px;
	top: 13px;
	padding: 2px;
	border-left: 1px solid #d1d5db
}

.left-pan {
	padding-left: 7px
}

.left-pan i {
	padding-left: 10px
}

.form-input {
	height: 55px;
	text-indent: 33px;
	border-radius: 10px
}

.form-input:focus {
	box-shadow: none;
	border: none
}
</style>

<!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

	<header id="header" class="fixed-top header-scrolled">
		<nav id="navbar" class="navbar" style="justify-content: end">
			<a style="padding-right: 57%" href="ploginmain.jsp"><img style="width: 40px"
				src="image/p+만.png"></a>
			<ul style="padding-right: 30px">
				<li><a class="nav-link scrollto" href="#"
					style="text-decoration: none">사이트 소개</a></li>
				<li></li>
				<div class="dropdown nav-item active">
					<a style="text-decoration: none" class="nav-link dropdown-toggle"
						href="컨텐츠추천.jsp">컨텐츠 추천</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="ptype.jsp">유형 확인 및 재검사</a></li>
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
					<a class="nav-link dropdown-toggle" href="#">마이페이지</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="pupdate.jsp">회원정보
								수정/탈퇴</a></li>
						<li><a class="dropdown-item" href="achieveall.jsp">전체
								학습상황 조회</a></li>
						<li><a class="dropdown-item" href="#">위시리스트</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">로그아웃</a></li>


			</ul>
		</nav>
	</header>


	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			
		</div>



		<div class="shop_sidebar_area" style="bg-color:#f5f7fa">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->
				<h6 class="widget-title mb-30">컨텐츠 추천</h6>
				<hr>
				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li><a href="#">유형확인 및 재검사</a></li>
						<li><a href="search.jsp">책 검색</a></li>
					</ul>
				</div>
			</div>

		</div>

		<div class="container" style="bg-color:#fbb710">
			<div
				class="row height d-flex justify-content-center align-items-center">
				<div class="col-md-6">
					<div class="form">
					<form action="">
						<i class="fa fa-search"></i> <input type="text"
							class="form-control form-input" value="${param.searchWord}" name="searchWord" id="searchWord" style="height: 55px;
    text-indent: 33px;
    border-radius: 10px;
    margin-top: 90px;">
						<div class="text-center"><span class="left-pan">
					<a class="btn" id="q">검색</a>
				</span></div>
				</form>
				<div class="col-12" style="flex: 0 0 100%; width: 75rem; padding-right: 250px; margin-left: -132px">
							<div class=" ">
							<br>
								<h4>[도서검색]</h4>
							</div>

							<div class="clearfix">
								<table class="table">

									<tr>
										<th></th>
										<th class="text-center">제목</th>
										<th class="text-center">저자</th>
									</tr>

									<c:forEach var="i" items="${bklist }">
										<tbody style="text-align: center;">
											<tr>

												<td><a href="BookintCon?num=${i.book_num}"><img src="${i.book_img}" style="height: 13rem;"></a></td>
												<td class="wish-num" style="font-size: 20px;">
														${i.book_title }</td>
												<td><div style="font-size:20px">${i.book_author }</div></td>

											</tr>
										</tbody>
									</c:forEach>
								</table>
								<nav aria-label="Page navigation example">
					<div class="text-center">
						<ul class="pagination" style="justify-content: center;">
							
							<%
								if(count > 0){
									// 총 페이지의 수
									int pageCount = count / pageSize + (count%pageSize == 0 ? 0 : 1);
									
									// 한 페이지에 보여줄 페이지 블럭(링크) 수
									int pageBlock = 10;
									// 한 페이지에 보여줄 시작 및 끝 번호(예 : 1, 2, 3 ~ 10 / 11, 12, 13 ~ 20)
									int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
									int endPage = startPage + pageBlock - 1;
									
									// 마지막 페이지가 총 페이지 수 보다 크면 endPage를 pageCount로 할당
									if(endPage > pageCount){
										endPage = pageCount;
									}
									
									if(startPage > pageBlock){ // 페이지 블록수보다 startPage가 클경우 이전 링크 생성
								
							
							%>
										<li class="page-item">
											<a class="page-link" href="search1.jsp?pageNum=<%= startPage - 10 %>&searchWord=<%=searchWord %>" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
											</a>
										</li>
									
							<%
								}
										for(int i=startPage; i <= endPage; i++){ // 페이지 블록 번호
											if(i == currentPage){ // 현재 페이지에는 링크를 설정하지 않음
							
							%>				
											<%=i %>
											
								<%									
											}else{ // 현재 페이지가 아닌 경우 링크 설정
								%>	
											<li class="page-item">
												<a class="page-link" href="search1.jsp?pageNum=<%=i%>&searchWord=<%=searchWord %>"><%=i %></a>
											</li>
											<%	
								}
							} // for end
							
							if(endPage < pageCount){ // 현재 블록의 마지막 페이지보다 페이지 전체 블록수가 클경우 다음 링크 생성
					%>
										<li class="page-item">
											<a class="page-link" href="search1.jsp?pageNum=${startPage + 10 }$searchWord=<%=searchWord %>" aria-label="Next"> 
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
				</div>
			</div>
		</div>
	</div>

	<!-- ##### Main Content Wrapper End ##### -->
	<script src="jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	 $(document).ready(function() {
		 $("#q").click(function () {
			 var searchWord = $("#searchWord").val();
			 location.href='Search.do?keyWord=book_title&searchWord='+searchWord;
				console.log(searchWord);
		}) 
	});
	
	
	</script>

	<!-- ##### Footer Area Start ##### -->


	<!-- Js Plugins -->
	<script src="캐러셀/js/jquery-3.3.1.min.js"></script>
	<script src="캐러셀/js/bootstrap.min.js"></script>
	<script src="캐러셀/js/jquery-ui.min.js"></script>
	<script src="캐러셀/js/jquery.slicknav.js"></script>
	<script src="캐러셀/js/mixitup.min.js"></script>
	<script src="캐러셀/js/owl.carousel.min.js"></script>
	<script src="캐러셀/js/main.js"></script>



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
	</div>
</body>
</html>
