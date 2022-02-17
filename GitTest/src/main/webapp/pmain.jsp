<%@page import="com.pplus.model.RecVideoDTO"%>
<%@page import="com.pplus.model.VideoDAO"%>
<%@page import="com.pplus.model.VideoDTO"%>
<%@page import="com.pplus.model.RecBookDAO"%>
<%@page import="com.pplus.model.RecBookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="com.pplus.model.BookDAO"%>
<%@page import="com.pplus.model.BookDTO"%>
<%@page import="com.pplus.model.PMemberDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");

PMemberDAO dao = new PMemberDAO();
BookDAO bookDao = new BookDAO();
VideoDAO videoDao = new VideoDAO();
RecBookDAO recDaobook = new RecBookDAO();
ArrayList<RecBookDTO> recbooklist = (ArrayList<RecBookDTO>) session.getAttribute("recbooklist");
ArrayList<RecVideoDTO> recvideolist = (ArrayList<RecVideoDTO>) session.getAttribute("recvideolist");

ArrayList<BookDTO> booklist = null;
ArrayList<VideoDTO> videolist = null;
// 로그인 
if (member != null) {
	if (member.getUser_type1() == null) {
		// 유형조사를 안했을 때
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
		booklist = bookDao.bookSelectAll(array);
		videolist = videoDao.videoSelectAll(array);
		request.setAttribute("booklist", booklist);
		request.setAttribute("videolist", videolist);
	} else if (recbooklist != null) {
		// 로그인 유형조사 했을 때

	}
} else {
	// 로그인 안했을 떄
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
	booklist = bookDao.bookSelectAll(array);
	videolist = videoDao.videoSelectAll(array);
	request.setAttribute("booklist", booklist);
	request.setAttribute("videolist", videolist);
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<script src="jquery-3.6.0.min.js"></script>
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
					<a href="mywish.jsp">위시리스트</a>
					<a href="scheduleset.jsp">스케줄등록</a>
					<a href="scheduleindex.jsp">스케줄목록</a>
					<a href="dayplantodayset.jsp">일정등록</a>
					<a href="lookup.jsp">조회</a>
					<c:choose>
						<c:when test="${empty member.user_type1}">
							<script>
								window.open("ptype2.jsp", "ptype",
												"width=800, height=300, left=100, top=50");
							</script>
						</c:when>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
	<hr>
	<c:choose>
		<c:when test="${empty member}">
			<c:forEach var="book" items="${booklist }">
				<a href="BookintCon?num=${book.book_num }"> <img
					src="${book.book_img}" width="80">
				</a>
			</c:forEach>
			<hr>
			<c:forEach var="video" items="${videolist }">
				<a href="VideointCon?num=${video.video_num}"> <img
					src="${video.video_thumbnail}" width="80">
				</a>
			</c:forEach>
			
		</c:when>

		<c:otherwise>
			<c:choose>
				
					<c:when test="${empty member.getUser_type1() }">
					<table>
					<tr>
						<c:forEach var="book" items="${booklist }">
							<td>
								<a href="BookintCon?num=${book.book_num }"> 
								<img src="${book.book_img}" width="80">
								</a>
							</td>
						</c:forEach>
					</tr>
					<tr>
					<c:forEach var="recbook" items="${recbooklist }">
						<c:choose>
							<c:when test="${recbook.contents_cnt == 1}">
								<td>
									<a href="WishCon.do?num=${recbook.book_num}&recbooknum=1">
										<button type="button"><img src="heart1.png" width="20"></button>
									</a>
								</td>
							</c:when>
							<c:otherwise>
								<td>
									<a href="WishCon.do?num=${recbook.book_num}&recbooknum=0">
										<button type="button"><img src="heart0.png" width="20"></button>
									</a>
								</td>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</tr>
					</table>
					<hr>
					<table>
					<tr>
						<c:forEach var="video" items="${videolist }">
						<td>
							<a href="VideointCon?num=${video.video_num}"> 
								<img src="${video.video_thumbnail}" width="80">
							</a>
						</td>
						</c:forEach>
					</tr>
					</table>
					</c:when>
				
				<c:otherwise>
					<table>
						<tr>
							<c:forEach var="recbook" items="${recbooklist }">
								<td><a
									href="BookintCon?num=${recbook.book_num }"> <img
										src="${recbook.book_img}" width="80">
								</a></td>
							</c:forEach>
						</tr>
						<tr>
							<c:forEach var="recbook" items="${recbooklist }">
								<c:choose>
									<c:when test="${recbook.contents_cnt==1 }">
									
										<td>
											<a href="WishCon.do?num=${recbook.book_num}&recbooknum=${recbook.contents_cnt}">
												<button type="button"><img src="heart1.png" width="20"></button>
											</a>
										</td>
									</c:when>
									<c:otherwise>
										<td>
											<a href="WishCon.do?num=${recbook.book_num}&recbooknum=${recbook.contents_cnt}">
												<button type="button"><img src="heart0.png" width="20"></button>
											</a>
										</td>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</tr>

					</table>
					<hr>
					<table>
						<tr>
							<c:forEach var="recvideo" items="${recvideolist }">
							<td>
								<a href="VideointCon?num=${recvideo.video_num}"> <img
									src="${recvideo.video_thumbnail}" width="80">
								</a>
							</td>
							</c:forEach>
						</tr>
						<tr>
							<c:forEach var="recvideo" items="${recvideolist }">
								<c:choose>
									<c:when test="${recvideo.contents_cnt==1 }">
									
										<td>
											<a href="WishVideoCon.do?num=${recvideo.video_num}&recvideonum=${recvideo.contents_cnt}">
												<button type="button"><img src="heart1.png" width="20"></button>
											</a>
										</td>
									</c:when>
									<c:otherwise>
										<td>
											<a href="WishVideoCon.do?num=${recvideo.video_num}&recvideonum=${recvideo.contents_cnt}">
												<button type="button"><img src="heart0.png" width="20"></button>
											</a>
										</td>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</tr>
					</table>
				</c:otherwise>
			</c:choose>
		</c:otherwise>

	</c:choose>
	<script src="jquery-3.6.0.min.js"></script>
	<script>

	</script>
</body>
</html>
