<%@page import="com.pplus.model.EditorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.EditorDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@page import="com.pplus.model.ScheduleDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
ScheduleDTO schedule = (ScheduleDTO) session.getAttribute("schedule");
PMemberDTO member = (PMemberDTO) session.getAttribute("member");

EditorDAO editorDAO = new EditorDAO();
ArrayList<EditorDTO> editoralllist = new ArrayList<EditorDTO>();

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
count = editorDAO.getCount3(member.getMember_nick()); // 데이터베이스에 저장된 총 갯수

if (count > 0) {
	editoralllist = editorDAO.memberEditorSelectAll(member.getMember_nick());
	pageContext.setAttribute("editoralllist", editoralllist);

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

<title>Hello, world!</title>
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

</head>

<body>
	<header
		class="navbar navbar-expand navbar-dark bg-dark bd-navbar fixed-top">
		<a class="navbar-brand" href="#">P+</a>
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
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="컨텐츠추천.jsp">컨텐츠 추천</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">유형 확인 및 재검사</a></li>
					</ul>
				</div>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="plannermain.jsp">학습플래너</a>
					<span class="caret"></span>
					</button>
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
						<li><a href="editorallindex.jsp">전체 에디터 목록</a></li>
						<li><a href="diaryindex.jsp">전체 일기 목록</a></li>
						<li><a href="todoindex.jsp">전체 할 일 목록</a></li>


					</ul>
				</div>



				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">마이페이지</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">회원정보 수정/탈퇴</a></li>
						<li><a class="dropdown-item" href="#">전체 학습상황 조회</a></li>
						<li><a class="dropdown-item" href="#">위시리스트</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link" href="#">로그아웃</a>
				</li>
			</ul>
		</div>
	</header>
	<!-- 회원탈퇴 Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">
						<!-- <i class="bi bi-exclamation-circle"></i> -->
						<i class="bi bi-exclamation-circle-fill"></i> 회원 탈퇴
					</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
            <path fill-rule="evenodd"
								d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z" />
            <path fill-rule="evenodd"
								d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z" />
          </svg>
					</button>
				</div>
				<br>
				<div class="modal-body text-center" style="font-size: 20px">
					회원탈퇴 하시겠습니까?</div>
				<br>

				<div class=" modal-footer ">
					<a href="#" class="btn btn-primary ">확인</a>
				</div>
			</div>
		</div>
	</div>



	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav"></div>

		<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->
				<h6 class="widget-title mb-30">마이페이지</h6>

				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">회원 정보</a></li>
						<hr />
						<li><a href="#">회원 정보 수정</a></li>
						<a><li class="btn" data-bs-toggle="modal"
							data-bs-target="#staticBackdrop">회원 탈퇴</a>
						</li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">위시리스트</a></li>
						<hr />
						<li><a href="#">책</a></li>
						<li><a href="#">영상</a></li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">
				<!-- Widget Title -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a href="#">전체학습상황조회</a></li>
						<hr />
						<li><a href="#">달력 체크</a></li>
						<li><a href="#">차트</a></li>
						<li><a href="#">전체 스케줄 목록</a></li>
						<li><a href="editorallindex.jsp">전체 에디터 목록</a></li>
						<li><a href="#">전체 일기 목록</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container" style="padding-top: 90px">
			<div>

				<br>
				<h1 style="text-align: center;">
					MY 에디터 <i class="fas fa-laptop-code"></i>
				</h1>
				<br>
				<div class="container">
					<c:set value="<%=(currentPage - 1) * 10%>" var="j" />
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
							<c:forEach var="i" items="${editoralllist }">
								<tr>
									<td><div class="form-check">
											<input class="form-check-input" type="radio"
												name="flexRadioDefault" id="flexRadioDefault1"> <label
												class="form-check-label" for="flexRadioDefault1"> </label>
										</div></td>
									<td><input value="${i.editor_num }" style="display: none;"
										name="num"> <input value="${i.member_nick }"
										style="display: none;" name="nick"> ${j = j + 1}</td>
									<td>${i.editor_date}</td>
									<td>${sessionScope.schedule.schedule_name }</td>
									<td>${i.editor_title }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<br>
				<div class="page">
					<div class="text-center">
						<a href="#" class="btn btn-dark">선택 수정</a> <a href="#"
							class="btn btn-dark">선택 삭제</a>
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

