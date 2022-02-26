<%@page import="com.pplus.model.AchieveDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% ArrayList<AchieveDTO> list = (ArrayList<AchieveDTO> )session.getAttribute("achievelist"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="padding-top: 90px">
			<div>
				<br>
				<h1 style="text-align: center;">
					스케줄 <i class="fas fa-book"></i>
				</h1>
				<br>
				<div class="container">
					<table
						class="table table-bordered table-hover table-sm text-center ">

						<thead class="table-warning ">
							<tr>
								<th></th>
								<th class="text-center">No.</th>
								<th class="text-center">스케줄명</th>
							</tr>
						</thead>
							<c:forEach var="i" items="${sessionScope.schedulelist }">
											<tr>
												<td><div class="form-check">
														<input class="form-check-input" type="checkbox"
															name="flexRadioDefault" id="flexRadioDefault1"
															value="${i.schedule_num }" onclick="getCheckboxValue(this)"> <label
															class="form-check-label" for="flexRadioDefault1">
														</label>
													</div></td>
												<td><input value="${i.schedule_num }"
													style="display: none;" name="num"> <input
													value="${i.member_nick }" style="display: none;"
													name="nick"> ${j = j + 1}</td>
												<td>${i.schedule_name }</td>
											</tr>
								</c:forEach>
					</table>
					<div id='result'></div>
					
				</div>
			</div>
		</div>
	<script src="jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
	function getCheckboxValue()  {
		  // 선택된 목록 가져오기
		  const query = 'input[name="flexRadioDefault"]:checked';
		  const selectedEls = document.querySelectorAll(query);
		  
		  // 선택된 목록에서 value 찾기
		  let result2 = [];
		  selectedEls.forEach((el) => {
		    result2.push(el.value);
		  });
		  
		  // 출력
		  document.getElementById('result').innerText
		    = result2;
		  console.log(result2);
		  
		  
		
		  
		  // ajax로 보내기
		  $.ajax({
		         url : "AchieveIndexCon.do",
		         type : 'POST',
		         data: {"result2" : result2},
		         dataType: 'json',

		         success : function(msg) {
		        	 console.log("카운터", msg);
		            if (msg != 0) {
		               alert("완료!");
		               window.parent.location.reload();
		            }
		         },
		         error : function() {
		            alert("서버요청실패");
		         }
		      }); 
		  
		}
	
	 

		
	</script>
</body>
</html>