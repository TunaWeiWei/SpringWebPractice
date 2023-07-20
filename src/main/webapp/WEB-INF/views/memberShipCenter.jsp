<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員頁面</title>
</head>
<body>
 		<form class="show">
				<div class="ed">
					<button id="Edit"><a class="btn" href="<c:url value='/memberEdit'/>" >會員資料修改</a></button>
				</div>
				<div class="log">
					<button id="buttonPress"><a class="btn" href="<c:url value='/logout'/>" >登出</a></button>
				</div>			
			</form>
	<div id="bc">
	<h1>會員中心</h1>	
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
</body>
</html>