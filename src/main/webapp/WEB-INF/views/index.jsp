<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
   <!-- jQuery v1.9.1 -->
   <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
   <!-- toastr v2.1.4 -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css" rel="stylesheet"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>
   
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/basicCSS.css" type="text/css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indexCSS.css" type="text/css">    
   
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" >
<title>TunaWei餐廳訂位網</title>
</head>
<body onload="memberStatus()">
	<div>
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
			<img id="index_img" src="/images/rumman-amin-nKs-oXRGGEg-unsplash.jpg" alt="首頁圖">
		<div class="textContent">			
			<a href="<c:url value='introduction'/>">
				<button class="text">TunaWei餐廳介紹</button>
			</a>
			<a href="<c:url value='service'/>">
				<button class="text">立即預約</button>
			</a>
			<a href="<c:url value='memberShipCenter'/>">
				<button class="text">會員中心</button>
			</a>
			
		</div>
	</div>
	<div class="textContent">
		<a href="https://www.flaticon.com/free-icons/user" title="user icons">User icons created by Freepik - Flaticon</a>
		<a href="https://www.flaticon.com/free-icons/home-button" title="home button icons">Home button icons created by Freepik - Flaticon</a>
	</div>
	
	<script>
	function memberStatus() {
		if ("${alert}"=="loginSuccess") {			
			toastr.options.timeOut = 3000; 
	        toastr.info('會員登入成功');
					
		}else if ("${alert}"=="ReservationSuccess") {
			toastr.options.timeOut = 3000; 
	        toastr.info('預約成功');			
		};
	}	
	</script>
	
	<script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "你好:"+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>

</body>
</html>