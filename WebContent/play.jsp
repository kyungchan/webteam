<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PLMU :: 악기연주</title>
<link rel="icon" type="image/png"  href="img/icon.png"/>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/jquery-2.1.1.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/bootstrap.min.js"></script>
<c:choose>
	<c:when test="${inst == 'piano'}">
		<script src="js/piano.js"></script>
	</c:when>
	<c:when test="${inst == 'drum'}">
		<script src="js/drum.js"></script>
	</c:when>
</c:choose>
</head>
<body>
	<jsp:include page="share/header.jsp"></jsp:include>
	<jsp:include page="share/nav.jsp"></jsp:include>
	<div id="container">
		<div id="instrument">
			<div id=instselect class="center">
				<a href="plmu?pg=play&inst=piano" class="btn btn-default">Piano</a>
				<a href="plmu?pg=play&inst=drum" class="btn btn-default">Drum</a>
			</div>
			<div id="recoder" class="center">
				<input id="recode-time" type="text" value="0" readonly>	
				<a href="#" class="btn btn-default" data-action="recode" data-id="${ inst }">녹음하기</a>
			</div>
			<c:if test="${inst == 'piano'}">
				<jsp:include page="instrument/piano.jsp"></jsp:include>
			</c:if>
			<c:if test="${inst == 'drum'}">
				<jsp:include page="instrument/drum.jsp"></jsp:include>
			</c:if>
			
		</div>
		<form action="plmu" method="POST">
			<input type="hidden" name="_method" value="recode" />
			<input type="hidden" name="inst" value="${ inst }" />
			<input type="hidden" id="recoding" name="musiccode" value="" readonly>	
		</form>
	</div>
	<jsp:include page="share/footer.jsp"></jsp:include>
</body>
</html>
