<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PLMU :: 악기연주</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/core.js"></script>
<c:choose>
	<c:when test="${inst == 'piano'}">
		<script src="js/piano.js"></script>
	</c:when>
</c:choose>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="centered">
		<jsp:include page="share/header.jsp"></jsp:include>
		<jsp:include page="share/nav.jsp"></jsp:include>
		<div id="container">
			<div id="instrument">
			<div id="recoder">
				<input id="recode-time" type="text" value="0" readonly>	
				<a href="#" class="btn btn-default" data-action="recode" data-id="${ inst }">녹음하기</a>
			</div>
			<c:choose>
				<c:when test="${inst == 'piano'}">
					<jsp:include page="instrument/piano.jsp"></jsp:include>
				</c:when>
			</c:choose>
			</div>
			<input id="recoding" type="text" value="0" readonly>	
		</div>
		<jsp:include page="share/footer.jsp"></jsp:include>
	</div>
</body>
</html>
