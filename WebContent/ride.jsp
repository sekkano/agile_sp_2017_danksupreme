<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">
	</head>
	<br>
	<body>
		<%@ include file="includes/navigation.jsp" %>
		<div id="SiteInfo">
      <h1>Ride with Chippewa Valley Carpool</h1>
      <h2>Get to places conveniently, and on your schedule</h2>
      <form id="driverForm">
        <input type="text" id="driverEmail" name="driverEmail" placeholder="Email">
        <input type="text" id="driverFName" name="driverFirstName" placeholder="First name">
        <input type="text" id="driverLName" name="driverLastName" placeholder="Last Name">
        <input type="text" id="driverPhone" name="driverPhoneNumber" placeholder="Phone Number">
        <input type="text" id="driverUsername" name="driverUsername" placeholder="Desired Username">
        <input type="text" id="driverPassword" name="driverPassword" placeholder="Password">
        <input type="text" id="confirmDriverPassword" name="confirmDriverPassword" placeholder="Confirm Password">
        <input type="text" id="driverCity" name="driverCity" placeholder="City">
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