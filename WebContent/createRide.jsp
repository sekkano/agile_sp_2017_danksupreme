<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">
		<title>Test</title>
	</head>
	<br>
	<body>
		<%@ include file="includes/navigation.jsp" %>
        <div id="SiteInfo">
			<div id="riderContent">
			  <h1>Create a Ride</h1>
			  <p>Already a driver, but you need to let people know that you're willing to drive? Fill out the form below!</p> 
			  <form action="submitContactForm">
				<label for="fName">First Name</label>
				<input type="text" id="fName" name="firstName" placeholder="Enter your first name here...">
				<label for="lName">Last Name</label>
				<input type="text" id="lName" name="lastName" placeholder="Enter your last name here...">
				<label for="subject">Type of Vehicle</label>
				<select id="typeOfCar" name="typeOfCar">
				  <option value="one">Motorcycle</option>
				  <option value="two">Car</option>
				  <option value="three">Truck</option>
				  <option value="four">Van</option>
				  <option value="five">Bus</option>
				</select>
				<label for="subject">How many seats available?</label>
				<select id="numOfSeats" name="numOfSeats">
				  <option value="one">One</option>
				  <option value="two">Two</option>
				  <option value="three">Three</option>
				  <option value="four">Four</option>
				  <option value="five">Five</option>
				  <option value="five">Six or more</option>
				</select>
				<label for="message">Message</label>
				<textarea id="message" name="message" placeholder="Write your message here..."></textarea>
				<input type="submit" value="Submit">
			  </form>
			  
			  <form id="checkForRides">
				<input type="text" id="pickup" name="pickup" placeholder="Enter your Pickup Location...">
				<input type="text" id="pickup" name="destination" placeholder="Enter your Destination...">
				<br>
				<input type="submit" value="Search">
			</form>
			</div>
		</div>
        
			
	</body>
	<br>
	<%@ include file="includes/footer.jsp" %>
	<%@ include file="includes/scripts.jsp" %>
</html>