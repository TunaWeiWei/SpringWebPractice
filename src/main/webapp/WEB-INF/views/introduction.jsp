<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>餐廳介紹</title>
</head>
<body>
	<div>
		<img id="introduction_img" src="/images/owlHello.png" alt="介紹圖">
			<div>
				<a href="<c:url value='service'/>">
				<h1>立即登入去預約</h1>
			</div>
			<div>
				<a href="<c:url value='/'/>">
				<h1>回首頁</h1>
			</div>
	</div>

</body>
</html>