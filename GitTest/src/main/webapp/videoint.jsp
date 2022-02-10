<%@page import="javax.websocket.Session"%>
<%@page import="com.pplus.model.VideoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<img src="${video.video_thumbnail }">
	
	<p>${video.video_title }</p>
	<p>${video.video_upload }</p>
	<a href="${video.video_url }">${video.video_url }</a>
	
	<p>${video.video_channel }</p>
	<p>${video.video_hits }</p>
	<p>${video.video_time }</p>
	
	<button onclick="goBack()">앞쪽 페이지로</button>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>

</body>
</html>