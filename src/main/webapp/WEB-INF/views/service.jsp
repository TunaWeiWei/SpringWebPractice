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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/calender.css" type="text/css">

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>預約頁面</title>
</head>
<body class="light">>
	
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
		<h1>預約頁面</h1>
		<div class="inf">
    	<form method="post" action="Reservation">
    		<fieldset class="box">
    						<input type="hidden" name="account" value="${account}" required/>
    		<table>				
    			<div class="calendar">
                    <div class="calendar-header">
            
                        <div class="year-picker">
                            <span class="year-change" id="prev-year">
                                <pre><</pre>
                            </span>
                            <span class="year-change" id="year">2022</span>
                            <span class="year-change" id="next-year">
                                <pre>></pre>
                            </span>
                        </div>
                        <br>
                        <span class="month-picker" id="month-picker">February</span>
                    </div>
                    <div class="calendar-body">
                        <div class="calendar-week-day">
                            <div>日</div>
                            <div>一</div>
                            <div>二</div>
                            <div>三</div>
                            <div>四</div>
                            <div>五</div>
                            <div>六</div>
                        </div>
                        <div class="calendar-days"></div>
                    </div>                    
                    <div class="month-list"></div>
                </div>
    			</table>
    			
    			<table>
		            <tr>
		                <th>預約人數:</th>
                		<td><input type="radio"                 		  			   
                		  			   id="customer" name="customer" value="1" >1人
                		  	<input type="radio"                 		  			   
                		  			   id="customer" name="customer" value="2" >2人
                		  	<input type="radio"                 		  			   
                		  			   id="customer" name="customer" value="3" >3人
                		  	<input type="radio"                 		  			   
                		  			   id="customer" name="customer" value="4" >4人</td>
		            </tr>
		        </table>
		        				            
		        <table>
		            <tr>
		                <th>預約日期:</th>
                		<td><input type="date"                 		  			   
                		  			   id="date" name="date" required>日期</td>
		            </tr>
		        </table>
		        <table>
		            <tr>
		                <th>預約用餐時間:</th>
                		<td><input type="radio"                 		  			   
                		  			   id="eatingTime" name="eatingTime" value="noon" >午餐
                		  	<input type="radio"                 		  			 
                		  			   id="eatingTime" name="eatingTime" value="afternoon" >下午茶
                		  	<input type="radio"                 		  			  
                		  			   id="eatingTime" name="eatingTime" value="night" >晚餐</td>
		            </tr>
		        </table>		    			    		        
		        
		        <div class="ReservationSubmit">
		        <button type="submit" id="buttonPress" ><a class="btn">預約確認</a></button>
		        </div>
		        <div class="memberEditCancel">
		        <button id="buttonPress"><a class="btn" href="<c:url value='/cancelEdit'/>">取消修改</a></button>       			
       			</div>
       				   
		    </fieldset>
		</form>
		</div>		
	</div>
	
	<div>
		<a href="<c:url value='/'/>">
		<h1>回首頁</h1>
		</a>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/javaScript/calender.js" ></script>
	<script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "你好:"+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>
</body>
</html>