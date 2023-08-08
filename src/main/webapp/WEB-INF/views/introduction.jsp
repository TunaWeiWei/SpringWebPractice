<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/basicCSS.css" type="text/css">

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalender.css" type="text/css">

<!-- full calender連結 -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.js'></script>
<!-- full calender語言轉換 -->
<script src='https://cdn.jsdelivr.net/npm/@fullcalendar/core@6.1.8/locales-all.global.min.js'></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/javaScript/FullCalender.js" ></script>
    
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
		<div class="calender_container">
			<div id='calendar'></div>
		</div>
		<div class="member-functions-bar">		
			<div>
				<a href="<c:url value='service'/>">
				<h1>立即登入去預約</h1>
			</div>
			<div>
				<a href="<c:url value='/'/>">
				<h1>回首頁</h1>
			</div>
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