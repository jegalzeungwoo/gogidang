<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.spring.gogidang.domain.*" %>
<%
	MemberVO mvo = (MemberVO) session.getAttribute("MemberVO");
	StoreVO svo = (StoreVO) request.getAttribute("svo");
	ReviewVO rvo = (ReviewVO) request.getAttribute("rvo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
</script>
</head>
<body>
	<form id="review_reg_form" action="./reviewReg.re" method="post" enctype="multipart/form-data">
		<input type="hidden" name="s_name" value="<%=svo.getS_name() %>">
        <input type="hidden" name="u_id" value="<%=mvo.getU_id() %>">
        <input type="hidden" name="s_num" value="<%=svo.getS_num() %>">
        <input type="hidden" name="nickname" value="<%=mvo.getU_nick()%>">
		제목 : <input type="text" name="title" /> <br><br>
		내용 : <input type="text" name="content" /> <br><br>
		별점 : <input type="text" name="star" /> <br><br>
		파일 : <input type="file" name="file" multiple="multiple"> <br><br>
		<input type="button" value="사진업로드" onclick="fnAction('./reviewReg.re')" />
	</form>
	
	<script>
		function fnAction(url) {
			var frm = document.getElementById("review_reg_form");
			frm.action = url;
			frm.submit();
		}
	</script>
</body>
</html>