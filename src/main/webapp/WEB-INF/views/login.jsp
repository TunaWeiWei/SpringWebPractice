<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%
	//此項為確認連線者是否有通過帳號認證連進來 否則退回到登入頁面 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
	
	if (session.getAttribute("id") == null){
		
	}else {
		response.sendRedirect("memberShipCenter");
	}
%>        
<!DOCTYPE html>
<html>
<head>
 <!-- jQuery v1.9.1 -->
   <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
   <!-- toastr v2.1.4 -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css" rel="stylesheet"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>
   
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/basicCSS.css" type="text/css">
   
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登入頁面</title>
</head>
<body onload="memberStatus()">
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
	<h1 style="text-align: center; margin-top: 50px">登入您的帳號</h1>
    <form method='POST' action="loginCheck" >
        <fieldset>
            <div class="mem">
            	<label style="font-size: 20px; color: orange;">會員帳號:</label>
            	<input type="text1" placeholder="輸入帳號" id="account" name="account"><br />
            </div>
            <div class="mem">
            	<label style="font-size: 20px; color: orange;">會員密碼:</label>
            	<input type="password" placeholder="輸入密碼" id="passWord" name="passWord"><br />
            </div>
            <div class="mem1">
            	<input type="submit" value="登入" class="button"><br />
            </div>
            <div class="mem1">
            	<button id="create"><a href="" style="text-decoration: none; color: blue" target="_blank">忘記密碼?</a></button>
            <button id="create"><a href="<c:url value='/memberCreate'/>"  style="text-decoration: none; color: blue">註冊新會員</a></button>
            </div>
        </fieldset>
    </form>

<!-- 彈出帳號申請成功提醒 -->    
    	<script>
		
		if (UserNameCheck = "${username}") {
			document.getElementById("member").innerText = "你好:"+"${username}" ;
		}else {
			document.getElementById("member").innerText = "登入/註冊" ;
		}
	</script>
	<script>
	function memberStatus() {
		if ("${alert}"=="createSuccess") {
			toastr.options.timeOut = 3000; 
	        toastr.info('會員申請成功');			
		};
	}	
	</script>

</body>
</html>