<%@page import="javax.websocket.Session"%>
<%@page import="com.pplus.model.VideoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
    VideoDTO video = (VideoDTO)session.getAttribute("video");

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${empty member }">
		<img src="${video.video_thumbnail }">
			
			<p>${video.video_title }</p>
			<p>${video.video_upload }</p>
			<a href="${video.video_url }">${video.video_url }</a>
			
			<p>${video.video_channel }</p>
			<p>${video.video_hits }</p> 
			<p>${video.video_time }</p>
	</c:when>
	<c:otherwise>
		<img src="${video.video_thumbnail }">
		<c:choose>
				<c:when test="${recvideo.contents_cnt==1}">
						<a href="WishVideoCon2.do?num=${recvideo.video_num}&recbooknum=${recvideo.contents_cnt}">
						<button type="button"><img src="heart1.png" width="20"></button>
						</a>
				</c:when>
				<c:otherwise>
						<a href="WishVideoCon2.do?num=${recvideo.video_num}&recbooknum=${recvideo.contents_cnt}">
						<button type="button"><img src="heart0.png" width="20"></button>
						</a>
				</c:otherwise>
			</c:choose>
		<p>${video.video_title }</p>
			<p>${video.video_upload }</p>
			<a href="${video.video_url }">${video.video_url }</a>
			
			<p>${video.video_channel }</p>
			<p>${video.video_hits }</p> 
			<p>${video.video_time }</p>
	</c:otherwise>	
		
	
</c:choose>
	<button onclick="goBack()">앞쪽 페이지로</button>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>

</body>
</html>