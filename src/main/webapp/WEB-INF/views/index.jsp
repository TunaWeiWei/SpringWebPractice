<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首頁</title>
</head>
<body>
	<div>
		<img id="index_img" src="/images/鯊鯊探頭圖.jpg" alt="首頁圖">
		<div>
			<a href="<c:url value='introduction'/>">
				<h1>歡迎來到TunaWei餐廳訂位網</h1>
			</a>
		</div>
		<div>
			<a href="<c:url value='login'/>">
				<h1>立刻登入</h1>
			</a>
		</div>
	</div>
	

</body>
</html>