<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%
	//此項為確認連線者是否有通過帳號認證連進來 否則退回到登入頁面 
//	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
//	if (session.getAttribute("member") == null){
//		response.sendRedirect("login.jsp");
//	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>預約頁面</title>
</head>
<body>
	<div>
		<h1>預約頁面</h1>
	</div>
	<div>
		<a href="<c:url value='/'/>">
		<h1>回首頁</h1>
	</div>
</body>
</html>