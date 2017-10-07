<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Sign In</title>
		<meta name="description" content="This is the page where people are sent to sign up to be a driver or car pooler">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">
	</head>
	<br>
	<body>
		<%@ include file="includes/navigation.jsp" %>
		<div id="SiteInfo">
			<div id="riderContent">
				<div id="driverForm">
					<h1>Sign up</h1>
					<form id="driverForm">
						<input type="text" class="driverSignup" name="driverEmail" placeholder="Email">
						<input type="text" class="driverSignup" name="driverFirstName" placeholder="First Name">
						<input type="text" class="driverSignup" name="driverLastName" placeholder="Last Name">
						<input type="tel" class="driverSignup" name="driverPhoneNumber" placeholder="Phone Number">
						<input type="password" class="driverSignup" name=driverPassword" placeholder="Password">
						<input type="password" class="driverSignup" name=driverPasswordConfirm" placeholder="Confirm Password">
						<input type="submit" value="Submit">
					</form>
				</div>
			</div>
		</div>
	</body>
	<br>
	<%@ include file="includes/footer.jsp" %>
	<%@ include file="includes/scripts.jsp" %>
</html>