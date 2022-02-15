<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h3>도서위시리스트 목록</h3>
	<ol>
		<c:forEach var="wish" items="${wishlistbook }">
			<li>
				<a href="javascript:sendBookValues1('${wish.book_title}', '${wish.book_num}', '${wish.book_page}' )"> 
					<img src="${wish.book_img}" width="80">
				</a>
			</li>
		</c:forEach>
	</ol>
	<script type="text/javascript">
			function sendBookValues1(name,num,page) {
				console.log(name);
				console.log(num);
				console.log(page);
				opener.setBookValues1(name,num,page);
				window.close();
			}		
		</script>
</body>
</html>