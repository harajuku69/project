<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="wrap">
	<jsp:include page="header/header.jsp"></jsp:include>
	<jsp:include page="contents/contentsHome.jsp"></jsp:include>
	<jsp:include page="sub/subStaff.jsp"></jsp:include>
	<jsp:include page="footer/footer.jsp"></jsp:include>
</div>
</body>
</html>