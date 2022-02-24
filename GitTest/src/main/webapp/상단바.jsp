<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- Title  -->
<title>P+(Programming�� Planner�� ���ϴ�.)</title>
<!-- Favicon  -->
<link rel="icon" href="image/p+��.png" />
<!-- ��ܹ� css -->
<link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
	<header id="header" class="fixed-top header-scrolled">
		<nav id="navbar" class="navbar" style="justify-content: end">
			<a style="padding-right: 57%" href="ploginmain.jsp"><img style="width: 40px"
				src="image/p+��.png"></a>
			<ul style="padding-right: 30px">
				<li><a class="nav-link scrollto" href="#"
					style="text-decoration: none">����Ʈ �Ұ�</a></li>
				<li></li>
				<div class="dropdown nav-item active">
					<a style="text-decoration: none" class="nav-link dropdown-toggle"
						href="��������õ.jsp">������ ��õ</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="ptype.jsp">���� Ȯ�� �� ��˻�</a></li>
						<li><a class="dropdown-item" href="search1.jsp">å �˻�</a></li>
					</ul>
				</div>

				<li></li>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="plannermain.jsp">�н��÷���</a>
					<span class="caret"></span>

					<ul class="dropdown-menu">
						<li class="dropdown-header">������</li>
						<hr>
						<li><a href="scheduleset.jsp">���</a></li>
						<li><a href="scheduleindex.jsp">��ü ������ ���</a></li>

						<br>
						<li class="divider"></li>
						<li class="dropdown-header">����</li>
						<hr>
						<li><a href="dayplantodayset.jsp">���</a></li>
						<li><a href="dayplantodayindex.jsp">��ü ���� ���</a></li>

						<br>
						<li class="divider"></li>
						<li class="dropdown-header">��ȸ</li>
						<hr>
						<li><a href="editorallindex.jsp">��ü ������ ���</a></li>
						<li><a href="diaryallindex.jsp">��ü �ϱ� ���</a></li>
						<li><a href="todoallindex.jsp">��ü �� �� ���</a></li>
					</ul>
				</div>
				<li></li>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">��Ʈ������</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">���</a></li>

						<li><a class="dropdown-item" href="#">���</a></li>
					</ul>
				</div>
				<li></li>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">����������</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="pupdate.jsp">ȸ������
								����/Ż��</a></li>
						<li><a class="dropdown-item" href="achieveall.jsp">��ü
								�н���Ȳ ��ȸ</a></li>
						<li><a class="dropdown-item" href="#">���ø���Ʈ</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link"
					href="plogout.jsp">�α׾ƿ�</a></li>


			</ul>
		</nav>
	</header>
</body>
</html>