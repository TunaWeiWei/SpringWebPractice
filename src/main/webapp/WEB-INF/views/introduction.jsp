<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/basicCSS.css" type="text/css">

<meta charset="UTF-8">
<title>餐廳介紹</title>
</head>
<body>
	<div class="icon-bar">
			<a href="<c:url value='/'/>">
				<img id="home_img" src="/icon/home.png" alt="首頁">
					<span class="" id="home"></span>
			</a>					
			<a href="<c:url value='login'/>">
				<img id="login_img" src="/icon/user.png" alt="會員登入">
					<span class="" id="member"></span>
			</a>
	</div>
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


	<script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "你好:"+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>
</body>
</html>