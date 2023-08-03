<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="UTF-8">
	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	 	 
<title>會員創立</title>

<!-- jQuery v1.9.1 -->
  	 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
  	 <!-- toastr v2.1.4 -->
 	 <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css" rel="stylesheet"/>
 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>
 	 
 	 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/basicCSS.css" type="text/css">
 	 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberShipCenterCSS.css" type="text/css">
 	 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberCRUD_CSS.css" type="text/css">
 	 
</head>
<body onload="memberStatus()">
	<div id="bc">
	<div id="title"><h1>會員申請</h1></div>	
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
    	<div class="inf">
    	<form method="post" action="memberCreate">
    		<fieldset class="box">
    			        
	            <table>
	                <tr>
	                    <th>帳號:</th>
               			<td><input type="text1" placeholder="請包含英數字混合4~10字內" 
               					   pattern="^([a-zA-Z]+\d+|\d+[a-zA-Z]+)[a-zA-Z0-9]*$" minlength="4" maxlength="10" title="請輸入4-10位英文+數字"
               					   id="account" name="account" value="${account}" required></td>
	                </tr>
	            </table>	        
		    		        
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
                		<td><input type="text1" placeholder="請輸入含區號之電話號碼"
                	       			   pattern="^0([0-9]*$)" minlength="9" maxlength="10" title="請輸入含區號之電話號碼(例如04xxxxoooo)"
                	      			   id="tel" name="tel" value="${tel}" required></td>
		            </tr>
		        </table>	       
		        <table>
		            <tr>
		                <th>手機:</th>
                		<td><input type="text1" placeholder="請輸入手機號碼" 
                		  			   pattern="^09([0-9]*$)" minlength="10" maxlength="10" title="請輸入手機號碼(例如09xxxxoooo)"
                		  			   id="cellphone" name="cellphone" value="${cellphone}" required></td>
		            </tr>
		        </table>		    	        
		        <table>
		            <tr>
		                <th>電子郵件:</th>
                		<td><input type="email" placeholder="請輸入電子郵件" id="email" name="email" value="${email}" required></td>
		            </tr>
		        </table>
		        
		        <div class="member-submit-bar">
		       	 <div class="memberCreateSubmit">
		        	<button type="submit" id="buttonPress" value="add"><a>申請</a></button>
		       	 </div>
		       	 <div class="memberCreateCancel">
		       		<button id="buttonPress"><a class="btn" href="<c:url value='/logout'/>">取消申請</a></button>       			
       			 </div>
       			</div>	   
		    </fieldset>
		</form>
		</div>		
	</div>

<!-- 彈出會員登入成功or會員修改成功 -->  
  	<script>
		if (UserNameCheck = "${username}") {
			document.getElementById("member").innerText = "你好:"+"${username}" ;
		}else {
			document.getElementById("member").innerText = "登入/註冊" ;
		}
	</script>
	<script>
	function memberStatus() {		
		if ("${alert}"=="detectSameAccount") {			
			toastr.options.timeOut = 3000; 
	        toastr.info('此帳號已經存在,請再嘗試其他名稱');					
		}
	}	
	</script>
</body>
</html>