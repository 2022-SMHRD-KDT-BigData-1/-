<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--코드 미러-->
<!-- include codemirror (codemirror.css, codemirror.js, xml.js, formatting.js) -->
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css" />
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css" />
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/mode/xml/xml.js"></script>
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/codemirror/2.36.0/formatting.js"></script>
<script src="codemirror-5.65.1/lib/codemirror.js"></script>
<link rel="stylesheet" href="codemirror-5.65.1/lib/codemirror.css" />
<script src="codemirror-5.65.1/mode/javascript/javascript.js"></script>
<style>
.CodeMirror {
	border: 1px solid #eee;
}
</style>
</head>
<body>
<div>
여긴 메인 글

	<script>
		var myCodeMirror = CodeMirror(document.body, {
			value : "\n",
			mode : "javascript",
			lineNumbers : "true",
		});
		var myCodeMirror = CodeMirror.fromTextArea(myTextArea, {
			lineNumber : true,
		});
	</script>
</div>
</body>
</html>