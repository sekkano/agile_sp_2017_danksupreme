<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">
	</head>
	<br>
	<body>
	<%@ include file="includes/navigation.jsp" %>
		<div id="SiteInfo">
	      <h1>Drive for Chippewa Valley Carpool</h1>
	      <h2>Earn money on your own time</h2>
	      <form id="riderForm">
	        <input type="text" id="riderEmail" name="riderEmail" placeholder="Email">
	        <input type="text" id="riderFName" name="riderFirstName" placeholder="First name">
	        <input type="text" id="riderLName" name="riderLastName" placeholder="Last Name">
	        <input type="text" id="riderPhone" name="riderPhoneNumber" placeholder="Phone Number">
	        <input type="text" id="riderUsername" name="riderUsername" placeholder="Desired Username">
	        <input type="text" id="riderPassword" name="riderPassword" placeholder="Password">
	        <input type="text" id="confirmRiderPassword" name="confirmRiderPassword" placeholder="Confirm Password">
	        <input type="text" id="riderCity" name="riderCity" placeholder="City">
	         <select id="vehicleType" name="vehicleType">
	          <option value="motorcycle">Motorcycle</option>
	          <option value="car/truck">Car or Truck</option>
	          <option value="van">Van</option>
	          <option value="bus">Bus</option>
	        </select>
	        <input type="radio" name="smoking" value="noSmoking"> <span id="radio">Smoking Not Allowed</span>
	        <input type="radio" name="smoking" value="yesSmoking"> <span id="radio">Smoking Allowed</span><br><br>
	        <input type="submit" value="Submit">
	      </form>
		</div>
	</body>
	<br>
	<%@ include file="includes/footer.jsp" %>
	<%@ include file="includes/scripts.jsp" %>
</html>