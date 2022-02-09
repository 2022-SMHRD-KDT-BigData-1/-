<%@page import="com.pplus.model.RecBookDAO"%>
<%@page import="com.pplus.model.RecBookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="com.pplus.model.BookDAO"%>
<%@page import="com.pplus.model.BookDTO"%>
<%@page import="com.pplus.model.PMemberDAO"%>
<%@page import="org.apache.tomcat.websocket.PerMessageDeflate"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");

PMemberDAO dao = new PMemberDAO();
BookDAO bookDao = new BookDAO();
RecBookDAO recDaobook = new RecBookDAO();
ArrayList<RecBookDTO> recbooklist = (ArrayList<RecBookDTO>) session.getAttribute("recbooklist");

ArrayList<BookDTO> booklist=null;


if (member != null) {
	if (recbooklist == null) {
		int[] array = new int[12];
		Random rd = new Random();
		for (int a = 0; a <= array.length - 1; a++) {
			array[a] = rd.nextInt(877);
			for (int b = 0; b < a; b++) {
				if (array[b] == array[a]) {
					a--;
					break;
				}
			}
		}
		booklist=bookDao.bookSelectAll(array);
		request.setAttribute("booklist", booklist);
	} else if (recbooklist != null){
		
	}

	
} else {

	int[] array = new int[12];
	Random rd = new Random();
	for (int a = 0; a <= array.length - 1; a++) {
		array[a] = rd.nextInt(877);
		for (int b = 0; b < a; b++) {
			if (array[b] == array[a]) {
				a--;
				break;
			}
		}
	}
	booklist=bookDao.bookSelectAll(array);
	request.setAttribute("booklist", booklist);

}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty member}">
			<a href="plogin.jsp">로그인</a>
			<a href="pjoin.jsp">회원가입</a>

		</c:when>
		<c:otherwise>
			<c:choose>
				<c:when test="${member.member_id=='admin'}">
					<a href="#">회원관리</a>
					<a href="plogout.jsp">로그아웃</a>
					<p>안녕2</p>

				</c:when>
				<c:otherwise>
					<a href="pmypage.jsp">마이페이지</a>
					<a href="plogout.jsp">로그아웃</a>
					<a href="ptype.jsp">유형조사</a>
					<c:choose>
						<c:when
							test="${empty member.user_type1 && empty member.user_type2 && empty member.user_type3}">
							<script langauge="javascript">
								window
										.open("ptype3.jsp", "ptype",
												"width=800, height=300, left=100, top=50");
							</script>
						</c:when>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
	<hr>
	<%for (int i=0; i< booklist.size(); i++){ %>
		<a href="BookintCon?num=<%=booklist.get(i).getBook_num() %>"> 
		<img src=<%=booklist.get(i).getBook_img()%> width="300">
		</a>
	<%} %>
</body>
</html>