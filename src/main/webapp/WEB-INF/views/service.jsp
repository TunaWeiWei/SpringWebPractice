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
<title>預約頁面</title>
</head>
<body>
	<div>
		<h1>預約頁面</h1>
		<div class="inf">
    	<form method="post" action="Reservation">
    		<fieldset class="box">
    						<input type="hidden" name="account" value="${account}" required/>	            
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
	</div>
	<div>
		<a href="<c:url value='/'/>">
		<h1>回首頁</h1>
	</div>
</body>
</html>