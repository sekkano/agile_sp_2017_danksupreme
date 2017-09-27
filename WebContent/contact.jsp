<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">
	</head>
	<header>
		<%@ include file="includes/navigation.jsp" %>
	</header>
	<br>
	<body>
		<div id="SiteInfo">
      <h1>Contact Us</h1>
      <p>We're happy to answer any questions you have. Just send us a message in the form below with any questions
      you may have.</p> 
      <form action="submitContactForm">
        <label for="fName">First Name</label>
        <input type="text" id="fName" name="firstName" placeholder="Enter your first name here...">
        <label for="lName">Last Name</label>
        <input type="text" id="lName" name="lastName" placeholder="Enter your last name here...">
        <label for="subject">Subject</label>
        <select id="subject" name="subject">
          <option value="riding">Riding</option>
          <option value="driving">Driving</option>
          <option value="account">Account</option>
          <option value="other">Other</option>
        </select>
        <label for="message">Message</label>
        <textarea id="message" name="message" placeholder="Write your message here..."></textarea>
        <input type="submit" value="Submit">
      </form>
		</div>
	</body>
	<br>
	<%@ include file="includes/footer.jsp" %>
	<%@ include file="includes/scripts.jsp" %>
</html>