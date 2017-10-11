<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">
		<title>Your Account</title>
	</head>
	<body>
		<%@ include file="includes/navigation.jsp" %>
		<div id="SiteInfo">
			<div id="riderContent">
				<h1>User Account</h1>
				<jsp:include page="includes/userProfile.jsp"></jsp:include>
			</div>
		</div>

	</body>
</html>