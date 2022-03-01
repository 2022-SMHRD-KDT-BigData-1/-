<%@page import="com.pplus.model.RecVideoDAO"%>
<%@page import="com.pplus.model.RecVideoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.RecBookDTO"%>
<%@page import="com.pplus.model.RecBookDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");

RecBookDAO recBookDao = new RecBookDAO();
RecVideoDAO recvideoDao = new RecVideoDAO();

ArrayList<RecBookDTO> wishlistbook = (ArrayList<RecBookDTO>) recBookDao.recBookWishSelectAll(member.getMember_nick());
ArrayList<RecVideoDTO> wishlistvideo = (ArrayList<RecVideoDTO>) recvideoDao
		.recVideoWishSelectAll(member.getMember_nick());

session.setAttribute("wishlistbook", wishlistbook);
session.setAttribute("wishlistvideo", wishlistvideo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css" />
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<div class=" section-padding-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div>
						<h3>도서위시리스트 목록</h3>
					</div>
					<div class="clearfix">
						<table class="table">
							<tr>
								<th></th>
								<th class="text-center">책</th>
								<th class="text-center">등록하기</th>
							</tr>
							<tbody style="text-align: center;">
							<c:forEach var="wish" items="${wishlistbook}">
								<tr>
									<td>${j = j + 1 }</td>
									<td><a href="javascript:sendBookValues1('${wish.book_title}', '${wish.book_num}', '${wish.book_page}' )"> 
											<img src="${wish.book_img}" width="80">
										</a>
									</td>
									<td>
										<a href="javascript:sendBookValues1('${wish.book_title}', '${wish.book_num}', '${wish.book_page}' )"> 
											스케줄 등록
										</a>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						<script type="text/javascript">
							function sendBookValues1(name, num, page) {
								console.log(name);
								opener.setBookValues1(name, num, page);
								window.close();
							}
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>