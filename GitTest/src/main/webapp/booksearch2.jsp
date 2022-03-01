<%@page import="com.pplus.model.BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div style="width: 80%; margin-left: 60px;">

			<!-- Option 1: Bootstrap Bundle with Popper -->
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
				crossorigin="anonymous"></script>



			<!-------내용 들어가는 부분---------------------->
			<div class=" section-padding-100">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<form action="SearchedBook.do" method="post">
								<select name="keyWord">
									<option value="book_title">제목</option>
									<option value="book_author">저자</option>
								</select> <input type="text" name="searchWord"> <input
									type="submit" value="검색">
							</form>
						</div>
						<div class="col-12">
							<div class=" ">
								<h4>[도서검색]</h4>
							</div>

							<div class="clearfix">
								<table class="table">

									<tr>
										<th></th>
										<th class="text-center">제목</th>
										<th class="text-center">저자</th>
									</tr>

									<c:forEach var="i" items="${requestScope.books }">
										<tbody style="text-align: center;">
											<tr>

												<td><a href="#"><img src="${i.book_img}"></a></td>
												<td class="wish-num" ><a div style="font-size:30px"
													href="javascript:sendBookValues('${i.book_title}', '${i.book_num}', '${i.book_page}' )">
														${i.book_title } </a></td>
												<td><div style="font-size:30px">${i.book_author }</div></td>

											</tr>
										</tbody>
									</c:forEach>
								</table>
								<script type="text/javascript">
									function sendBookValues(name, num, page) {
										console.log(name);
										opener.setBookValues(name, num, page);
										window.close();
									}
								</script>
							</div>
						</div>

					</div>
				</div>
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

