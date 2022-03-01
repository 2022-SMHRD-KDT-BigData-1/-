<%@page import="com.pplus.model.ScheduleDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@page import="com.pplus.model.ScheduleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");
ArrayList<ScheduleDTO> schedulelist = (ArrayList<ScheduleDTO>) session.getAttribute("schedulelist");
ScheduleDAO scheduleDAO = new ScheduleDAO();

int pageSize = 10;

int total = schedulelist.size();

pageContext.setAttribute("total", total);

int lastpage = (int) Math.ceil((double) total / 10);
pageContext.setAttribute("lastpage", lastpage);

int rownum = total;
pageContext.setAttribute("rownum", rownum);

String view_page = request.getParameter("viewpage");// 현재 페이지
if (view_page == null) {
	view_page = "1";
}
int viewpage = Integer.parseInt(view_page);

schedulelist = scheduleDAO.scheduleSelectAny(member.getMember_nick(), viewpage);

pageContext.setAttribute("schedulelist", schedulelist);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
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

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

<!-- 상단바 css -->
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="image/p+만1.png" alt="" /></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<button type="button" class="btn" data-toggle="collapse"
					data-target="#demo" style="background-color: black">
					<span></span><span></span><span></span>
				</button>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="demo">
			<ul class="navbar-nav">

				<li clas="nav-item"><a class="nav-link" href="#">사이트 소개</a></li>
				<li clas="nav-item"><a class="nav-link" href="컨텐츠추천.jsp">컨텐츠
						추천</a></li>
				<li clas="nav-item"><a class="nav-link" href="plannermain.jsp">학습플래너</a></li>
				<li clas="nav-item"><a class="nav-link" href="#">포트폴리오</a></li>
				<li clas="nav-item"><a class="nav-link" href="mypg_main.jsp">마이페이지</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">로그아웃</a></li>
			</ul>
		</div>
		<header id="header" class="fixed-top header-scrolled">
			<nav id="navbar" class="navbar">
				<a style="padding-left: 15px" href="ploginmain.jsp"><img
					style="width: 50px" src="image/p+만1.png"></a>
				<ul style="padding-right: 30px">
					<li><a class="nav-link scrollto" href="#"
						style="text-decoration: none">사이트 소개</a></li>
					<li></li>
					<div class="dropdown nav-item active">
						<a style="text-decoration: none" class="nav-link dropdown-toggle"
							href="컨텐츠추천.jsp">컨텐츠 추천</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="ptype.jsp">유형 확인 및
									재검사</a></li>
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
						<a class="nav-link dropdown-toggle" href="mypg_main.jsp">마이페이지</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="pupdate.jsp">회원정보
									수정/탈퇴</a></li>
							<li><a class="dropdown-item" href="achieveall.jsp">전체
									학습상황 조회</a></li>
							<li><a class="dropdown-item" href="mybookwish.jsp">위시리스트</a></li>
						</ul>
					</div>
					<li class="nav-item active"><a class="nav-link"
						href="plogout.jsp">로그아웃</a></li>


				</ul>
			</nav>
		</header>

		<div class="shop_sidebar_area">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->
				<h6 class="widget-title mb-30">마이페이지</h6>

				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li class="active"><a>회원 정보</a></li>
						<hr />
						<li><a href="pupdate.jsp">회원 정보 수정</a></li>
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
						<li class="active"><a>위시리스트</a></li>
						<hr />
						<li><a href="mybookwish.jsp">책</a></li>
						<li><a href="myvideowish.jsp">영상</a></li>
					</ul>
				</div>
			</div>

			<!-- ##### Single Widget ##### -->
			<div class="widget category mb-50">
				<div class="catagories-menu">
					<ul>
						<li class="active"><a>전체학습상황조회</a></li>
						<hr />
						<li><a href="mypg_calendar.jsp">달력 체크</a></li>
						<li><a href="achieveall.jsp">차트</a></li>
						<li><a href="mypg_scheduleindex.jsp">전체 스케줄 목록</a></li>
						<li><a href="mypg_editorallindex.jsp">전체 에디터 목록</a></li>
						<li><a href="mypg_diaryallindex.jsp">전체 일기 목록</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="container" style="padding-top: 90px">
			<div>

				<h1 style="text-align: center;">
					스케줄 <i class="far fa-solid fa-calendar-check"></i>
				</h1>
				<br>
				<div class="container">
					<c:set value="<%=(viewpage - 1) * 10%>" var="j" />
					<table
						class="table table-bordered table-hover table-sm text-center ">


						<thead class="table-warning ">
							<tr>
								<th class="text-center"><input type="checkbox"
									id="allCheck" name="allCheck"></th>
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
											<input class="form-check-input" type="checkbox"
												name="DeleteCheck" id="flexRadioDefault1"
												value="${schedule.schedule_num }"> <label
												class="form-check-label" for="flexRadioDefault1"> </label>
										</div>
									</td>
									<td>${j = j + 1}</td>
									<td>${schedule.schedule_name }</td>
									<td>${schedule.schedule_start }~${schedule.schedule_end }</td>
									<td>${schedule.book_title }</td>
									<td>${schedule.schedule_day_page }</td>
									<td></td>
									<td><a
										href="ScheduleIndexCon.do?num=${schedule.schedule_num }"
										style="font-size: 16px;"> 이동
											</button>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<br>
				<div class="page">
					<div class="text-center">
						<!-- 						<a href="#" class="btn btn-dark">선택 완료</a>
 -->
						<a href="#" class="btn btn-dark" id="delete">선택 삭제</a>
					</div>
					<br>
					<nav aria-label="Page navigation example">
						<div class="text-center">
							<ul class="pagination" style="justify-content: center;">

								<%
								if (viewpage > 0) {
									// 총 페이지의 수
									int pageCount = lastpage;

									// 한 페이지에 보여줄 페이지 블럭(링크) 수
									int pageBlock = 10;
									// 한 페이지에 보여줄 시작 및 끝 번호(예 : 1, 2, 3 ~ 10 / 11, 12, 13 ~ 20)
									int startPage = ((viewpage - 1) / pageBlock) * pageBlock + 1;
									int endPage = startPage + pageBlock - 1;

									// 마지막 페이지가 총 페이지 수 보다 크면 endPage를 pageCount로 할당
									if (endPage > pageCount) {
										endPage = pageCount;
									}

									if (startPage > pageBlock) { // 페이지 블록수보다 startPage가 클경우 이전 링크 생성
								%>
								<li class="page-item"><a class="page-link"
									href="scheduleindex.jsp?viewpage=<%=startPage - 10%>"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										<span class="sr-only">Previous</span>
								</a></li>

								<%
								}
								for (int i = startPage; i <= endPage; i++) { // 페이지 블록 번호
								if (i == viewpage) { // 현재 페이지에는 링크를 설정하지 않음
								%>
								<%=i%>

								<%
								} else { // 현재 페이지가 아닌 경우 링크 설정
								%>
								<li class="page-item"><a class="page-link"
									href="scheduleindex.jsp?viewpage=<%=i%>"><%=i%></a></li>
								<%
								}
								} // for end

								if (endPage < pageCount) { // 현재 블록의 마지막 페이지보다 페이지 전체 블록수가 클경우 다음 링크 생성
								%>
								<li class="page-item"><a class="page-link"
									href="scheduleindex.jsp?viewpage=${startPage + 10 }"
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


	</div>
	<script type="text/javascript" src="jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function() {

			$("#delete").click(function() {
				var list = [];
				var val = document.getElementsByName("DeleteCheck");
				var size = val.length;
				for (var i = 0; i < size; i++) {
					if (val[i].checked == true) {
						list.push(val[i].value);
						console.log("체크체크");
					}
				}
				location.href = 'ScheduleDeleteCon.do?list=' + list;
				console.log(list);
			});

		});
		/* $(function(){
			var check= document.getElementsByName("DeleteCheck");
			var DeleteCnt = check.length;
			
			$("input[name='allCheck']").click(function(){
				var check_list = $("input[name='DeleteCheck']");
				console.log(2);
				for(var i=0; i<check_list.length; i++){
					check_list[i].checked=this.checked;
					
				}
			};
			
			$("input[name='DeleteCheck']").click(function(){
				if($("input[name='DeleteCheck']:checked").length==DeleteCnt){
					$("input[name='allCheck']")[0].checked=true;
				} else {
					$("input[name='allCheck']")[0].checked=false;
				}
			};		
		};
		
		function deleteValue(){
			var url="ScheduleDeleteCon.do";
			var valuelist =new Array();
			var schedulelist = $("input[name='DeleteCheck']");
			
			for(var i =0; i<list.length; i++) {
				if(list[i].checked){
					valuelist.push(schedulelist[i].value);
				}
			}
			
			if(valuelist.length==0){
				alert("선택한 스케줄이 없습니다.");
			} else {
				var chk= confrim("정말 삭제하시겠습니까?");
				$.ajax({
					url : url,
					type : "POST",
					traditional : true,
					data : {
						valuelist : valuelist
						},
					success: function(jdata){
						if(jdata == 1){
							alert("삭제 성공");
							location.replace("scheduleindex.jsp")
						} else {
							alert("삭제 실패")
						}
					}
				});
			}
		} */
	</script>
	<!-- <script src="jquery-3.6.0.min.js"></script> -->
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