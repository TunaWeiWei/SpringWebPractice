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

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/basicCSS.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberShipCenterCSS.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberCRUD_CSS.css" type="text/css">
	
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>會員資料修改</title>
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
	<div id="bc">
	<div id="title"><h1>會員資料修改</h1></div>	
    	<div class="inf">
    	<form method="post" action="memberUpdate">
    		<fieldset class="box">
    						<input type="hidden" name="account" value="${account}" required/>	            
		        <table>
		            <tr>
		                <th>用戶名:</th>
                		<td><input type="text" placeholder="請輸入2-10個字"
                		  			   minlength="2" maxlength="10" title="請最少輸入2-10個字"
                		  			   id="userName" name="username" value="${username}" required></td>
		            </tr>
		        </table>		    		        
		        <table>
		            <tr>
		                <th>密碼:</th>
               			<td><input type="password" placeholder="請包含英數字混合4~10字內"
                           			   pattern="^([a-zA-Z]+\d+|\d+[a-zA-Z]+)[a-zA-Z0-9]*$" minlength="4" maxlength="10" title="請輸入4-10位英文+數字"
                           			   id="passWord" name="passWord" required></td>
		            </tr>
		        </table>	   
		        <table>
		            <tr>
		                <th>年齡:</th>
               			<td><input type="number" placeholder="請以數字輸入" id="age" name="age" value="${age}" required></td>
		            </tr>
		        </table>		       
		        <table>
		            <tr>
		                <th>電話:</th>
                		<td><input type="text" placeholder="請輸入含區號之電話號碼"
                	       			   pattern="^0([0-9]*$)" minlength="9" maxlength="10" title="請輸入含區號之電話號碼(例如04xxxxoooo)"
                	      			   id="tel" name="tel" value="0${tel}" required></td>
		            </tr>
		        </table>	       
		        <table>
		            <tr>
		                <th>手機:</th>
                		<td><input type="text" placeholder="請輸入手機號碼" 
                		  			   pattern="^09([0-9]*$)" minlength="10" maxlength="10" title="請輸入手機號碼(例如09xxxxoooo)"
                		  			   id="cellphone" name="cellphone" value="0${cellphone}" required></td>
		            </tr>
		        </table>		    	        
		        <table>
		            <tr>
		                <th>電子郵件:</th>
                		<td><input type="email" placeholder="請輸入電子郵件" id="email" name="email" value="${email}" required></td>
		            </tr>
		        </table>
		        
		        <div class="member-submit-bar">		        
		        	<div class="memberEditSubmit">
		        		<button type="submit" id="buttonPress" ><a class="btn">確認修改</a></button>
		       		</div>
		        	<div class="memberEditCancel">
		        		<button id="buttonPress"><a class="btn" href="<c:url value='/cancelEdit'/>">取消修改</a></button>       			
       				</div>
       			</div>	   
		    </fieldset>
		</form>
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