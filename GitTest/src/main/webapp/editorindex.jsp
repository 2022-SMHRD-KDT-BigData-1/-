<%@page import="com.pplus.model.PMemberDTO"%>
<%@page import="com.pplus.model.EditorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.EditorDAO"%>
<%@page import="com.pplus.model.ScheduleDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
ScheduleDTO schedule = (ScheduleDTO) session.getAttribute("schedule");
PMemberDTO member = (PMemberDTO) session.getAttribute("member");

EditorDAO editorDAO = new EditorDAO();
ArrayList<EditorDTO> editorlist = new ArrayList<EditorDTO>();

int pageSize = 10;
String pageNum = request.getParameter("pageNum");

if (pageNum == null) { // 클릭한게 없으면 1번 페이지
   pageNum = "1";
}

int currentPage = Integer.parseInt(pageNum);

// 해당 페이지에서 시작할 레코드 / 마지막 레코드
int startRow = (currentPage - 1) * pageSize + 1;
int endRow = currentPage * pageSize;

int count = 0;
count = editorDAO.getCount(schedule.getSchedule_num()); // 데이터베이스에 저장된 총 갯수

if (count > 0) {
   editorlist = editorDAO.getList(startRow, endRow, member, schedule);
   pageContext.setAttribute("editorlist", editorlist);

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
<link rel="stylesheet" href="css/core-style.css" />
<link rel="stylesheet" href="style.css" />


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">


<!-- Option 2: Separate Popper and Bootstrap JS -->

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">

</head>

<body>
	<header id="header" class="fixed-top header-scrolled">
		<nav id="navbar" class="navbar" style="justify-content: end">
			<a style="padding-right: 57%" href="ploginmain.jsp"><img
				style="width: 40px" src="image/p+만.png"></a>
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
		<div class="mobile-nav"></div>

		<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->


				<!-- ##### Single Widget ##### -->
				<div class="widget catagory mb-50">
					<!-- Widget Title -->

					<h6 class="widget-title mb-30">스케줄</h6>

					<!--  Catagories  -->
					<div class="catagories-menu">
						<ul>
							<li class="active"><a></a></li>
							<li><a href="schedule.jsp">달력</a></li>
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
							<li class="active"><a>에디터</a></li>
							<hr>
							<li><a href="editorset.jsp">에디터 작성</a></li>
							<li><a href="editorindex.jsp">에디터 목록</a></li>
						</ul>

					</div>
				</div>

				<!-- ##### Single Widget ##### -->
				<div class="widget category mb-50">

					<!-- Widget Title -->

					<div class="catagories-menu">
						<ul>
							<li class="active"><a>일기</a></li>
							<hr>
							<li><a href="diaryset.jsp">작성</a></li>
							<li><a href="diaryindex.jsp">일기 목록</a></li>
						</ul>
					</div>

					<div class="widget catagory mb-50">
						<div class="catagories-menu">
							<ul>
								<li class="active"><a>오늘 할 일</a></li>
								<hr>
								<li><a href="todoset.jsp">작성</a></li>
								<li><a href="todoindex.jsp">오늘 할 일 목록</a></li>
							</ul>
						</div>
					</div>


					<div class="catagories-menu">
						<ul>
							<li class="active"><a></a></li>
							<li><a href="achieve.jsp">학습진행상황</a></li>
							<hr />
						</ul>

					</div>

				</div>
			</div>
		</div>
		<div
			style="width: 80%; margin: 50px; margin-bottom: 10%; margin-top: 100px;">
			<br>
			<!-- <h1>스케줄 등록</h1> -->
			<!-- 에디터 목록 -->
			<div class="container">
				<h1 style="text-align: center;">
					[ 에디터 ]
					<!--      <i class="fas fa-laptop-code"></i>
 -->
				</h1>
				<br>
				<div class="container">
					<c:set value="<%=(currentPage - 1) * 10%>" var="j" />
					<table
						class="table table-bordered table-hover table-sm text-center " >

						<thead class="table-warning ">
							<tr>
								<th></th>
								<th class="text-center">No.</th>
								<th class="text-center">작성일</th>
								<th class="text-center">스케줄명</th>
								<th class="text-center">에디터 제목</th>
								<th class="text-center">조회</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" items="${editorlist }">
								<tr>
									<td><div class="form-check">
											<input class="form-check-input" type="checkbox"
												name="flexRadioDefault" id="flexRadioDefault1"
												value="${i.editor_num }"> <label
												class="form-check-label" for="flexRadioDefault1"> </label>
										</div></td>
									<td><input value="${i.editor_num }" style="display: none;"
										name="num"> <input value="${i.member_nick }"
										style="display: none;" name="nick"> ${j = j + 1}</td>
									<td>${i.editor_date}</td>
									<td>${sessionScope.schedule.schedule_name }</td>
									<td>${i.editor_title }</td>
									<td><a
										href="editorupdate.jsp" style="font-size: 16px;">이동</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<br>
				<div class="page">
					<div class="text-center">
						<a href="#" class="btn btn-dark" id="delete">선택 삭제</a>
					</div>
					<br>
					<nav aria-label="Page navigation example">
						<div class="text-center">
							<ul class="pagination" style="justify-content: center;">

								<%
								if (count > 0) {
									// 총 페이지의 수
									int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);

									// 한 페이지에 보여줄 페이지 블럭(링크) 수
									int pageBlock = 10;
									// 한 페이지에 보여줄 시작 및 끝 번호(예 : 1, 2, 3 ~ 10 / 11, 12, 13 ~ 20)
									int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
									int endPage = startPage + pageBlock - 1;

									// 마지막 페이지가 총 페이지 수 보다 크면 endPage를 pageCount로 할당
									if (endPage > pageCount) {
										endPage = pageCount;
									}

									if (startPage > pageBlock) { // 페이지 블록수보다 startPage가 클경우 이전 링크 생성
								%>
								<li class="page-item"><a class="page-link"
									href="editorindex.jsp?pageNum=<%=startPage - 10%>"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										<span class="sr-only">Previous</span>
								</a></li>

								<%
								}
								for (int i = startPage; i <= endPage; i++) { // 페이지 블록 번호
								if (i == currentPage) { // 현재 페이지에는 링크를 설정하지 않음
								%>
								<%=i%>

								<%
								} else { // 현재 페이지가 아닌 경우 링크 설정
								%>
								<li class="page-item"><a class="page-link"
									href="editorindex.jsp?pageNum=<%=i%>"><%=i%></a></li>
								<%
								}
								} // for end

								if (endPage < pageCount) { // 현재 블록의 마지막 페이지보다 페이지 전체 블록수가 클경우 다음 링크 생성
								%>
								<li class="page-item"><a class="page-link"
									href="editorindex.jsp?pageNum=${startPage + 10 }"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										<span class="sr-only">Next</span>
								</a></li>
								<%
								}
								}
								%>

							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {

				$("#delete").click(function() {
					var list = [];
					var val = document.getElementsByName("flexRadioDefault");
					var size = val.length;
					for (var i = 0; i < size; i++) {
						if (val[i].checked == true) {
							list.push(val[i].value);
							console.log("체크체크");
						}
					}
					location.href = 'EditorDeleteCon.do?list=' + list;
					console.log(list);
				});

			});
		</script>


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
