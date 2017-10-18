<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Error</title>
		<meta name="description" content="This is the page where people are sent to sign up.">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<%@ include file="includes/styles.jsp" %>
	</head>
	<br>
	<body>
		<%@ include file="includes/navigation.jsp" %>
		<div id="SiteInfo">
			<div>
				<h1>Error</h1>
				<p>${error}</p>
				<button onclick="goBack()">Back</button>
			</div>
		</div>
	</body>
	<br>
	<%@ include file="includes/footer.jsp" %>
	<%@ include file="includes/scripts.jsp" %>
</html>