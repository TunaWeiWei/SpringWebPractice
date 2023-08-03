<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%
	//此項為確認連線者是否有通過帳號認證連進來 否則退回到登入頁面 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
	
	if (session.getAttribute("id") == null){
		response.sendRedirect("login");
	}	
%>

<!DOCTYPE html>
<html>
<head>	
 	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<title>會員頁面</title>

  <!-- jQuery v1.9.1 -->
   	 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
 	 <!-- toastr v2.1.4 -->
 	 <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css" rel="stylesheet"  />
 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script> 
 	 
 	 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/basicCSS.css" type="text/css">
 	 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberShipCenterCSS.css" type="text/css">

</head>
<body onload="memberStatus()">   <!-- 2023/7/21發現問題無法載入toastr ==>忘了添加onload="memberStatus()",此處為在載入網頁時即進行動作的功能 -->
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
 		<div class="member-functions-bar">
				<div class="ed">
					<span id="Edit"><a class="btn" href="<c:url value='/memberEdit'/>" >會員資料修改</a></span>
				</div>					
				<div class="reservationSearch">
					<span id="buttonPress"><a class="btn" href="<c:url value='/reservationSearch'/>" >查詢預約紀錄</a></span>
				</div>
				<div class="log">
					<span id="buttonPress"><a class="btn" href="<c:url value='/logout'/>" >登出</a></span>
				</div>		
		</div>
	<div id="bc">
	<div id="title"><h1>會員中心</h1></div>
    	<div class="inf">
    		
    		<form>
	        <fieldset class="box">
	            <table>
	                <tr>
	                    <th>姓名:</th>
	                    <td>${username} </td>
	                </tr>
	            </table>
	        </fieldset>
		    </form>
		    <form>
		        <fieldset class="box">
		            <table>
		                <tr>
		                    <th>年齡:</th>
		                    <td>${age}</td>
		                </tr>
		            </table>
		        </fieldset>
		
		    </form>
		    <form>
		        <fieldset class="box">
		            <table>
		                <tr>
		                    <th>電話:</th>
		                    <td>0${tel}</td>
		                </tr>
		            </table>
		        </fieldset>
		
		    </form>
		    <form>
		        <fieldset class="box">
		            <table>
		                <tr>
		                    <th>手機:</th>
		                    <td>0${cellphone}</td>
		                </tr>
		            </table>
		        </fieldset>
		
		    </form>
		    <form>
		        <fieldset  class="box1">
		            <table>
		                <tr>
		                    <th>電子郵件:</th>
		                    <td>${email}</td>
		                </tr>
		            </table>
		        </fieldset>
		    </form>
		</div>		
	</div>
	
<!-- 彈出會員登入成功or會員修改成功 -->  
 	
	<script>
	function memberStatus() {		
		if ("${alert}"=="editSuccess"){
			toastr.options.timeOut = 3000; 
	        toastr.info('會員修改成功');			
		}
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