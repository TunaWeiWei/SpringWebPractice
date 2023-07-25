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
<meta charset="UTF-8">
<title>首頁</title>
</head>
<body onload="memberStatus()">
	<div>
		<img id="index_img" src="/images/鯊鯊探頭圖.jpg" alt="首頁圖">
		<div>
			<a href="<c:url value='introduction'/>">
				<h1>歡迎來到TunaWei餐廳訂位網</h1>
			</a>
		</div>
		<div>
			<a href="<c:url value='login'/>">
				<h1>立刻登入</h1>
			</a>
		</div>
		<div>
			<a href="<c:url value='memberShipCenter'/>">
				<h1>會員中心</h1>
			</a>
		</div>
	</div>
	
	
	<script>
	function memberStatus() {
		if ("${alert}"=="ReservationSuccess") {
			toastr.options.timeOut = 3000; 
	        toastr.info('預約成功');			
		};
	}	
	</script>

</body>
</html>