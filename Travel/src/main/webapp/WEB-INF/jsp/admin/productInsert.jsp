<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
String loginId = (String) session.getAttribute("user_id");
if ("user00".equals(loginId)) {
%>
<div style="text-align: right; margin: 10px;">
	<a href="productInsertForm.do" class="btn btn-primary">상품 등록</a>

</div>
<%
}
%>
<html>
<head>
<title>상품 등록</title>
</head>
<body>
	<h2>여행 상품 등록</h2>
	<form action="InsertProduct.do" method="post">
		제목: <input type="text" name="title"><br> 설명:
		<textarea name="description"></textarea>
		<br> 가격: <input type="number" name="price"><br> 출발일:
		<input type="date" name="start_day"><br> 종료일: <input
			type="date" name="end_day"><br> 나라: <input type="text"
			name="country"><br> 테마: <input type="text" name="theme"><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>
