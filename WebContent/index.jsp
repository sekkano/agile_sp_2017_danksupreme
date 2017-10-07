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
			<section class="infoLeft"> 
				<img id="van" src="assets/img/van.png">
				<h1>About Us</h1>
				<p>With our partners, our coffee and our customers at our core, we live these values:<br><br>
				Creating a culture of warmth and belonging, where everyone is welcome.<br>
				Acting with courage, challenging the status quo and finding new ways to grow our company and each other.<br>
				Being present, connecting with transparency, dignity and respect.<br>
				Delivering our very best in all we do, holding ourselves accountable for results.<br>
				We are performance driven, through the lens of humanity.</p>
			</section>
			<section class="infoRight">
				<img id="why" src="assets/img/butWhyThough.png">
				<h1>Why Chippewa Valley Carpool?</h1>
				<p>Chippewa Valley Carpool is locally owned and operated within the Chippewa Valley area. <br>
				Our goal is to provide a safe, affordable, and convenient method of transportation.<br>
				The way that our service is setup, you are allowed to see the poeple you would be riding with,<br>
				so if someone doesn't seem like they are compatible with you, or you don't feel comfotable<br>
				with them, you can choose not to ride with them. Also, our service uses either cash such as<br>
				a taxi service might, but you can also choose to pay online with your card, however there will<br>
				a small charge to your account to help pay for website maintinence.</p>
			</section>
			<section class="infoLeft">
				<div id="map">
        <script>
        //CREATES NEW MAP//
        function initMap() { //Call this function whenever a new marker needs to be made
          var centerPoint = {lat: 45.060, lng: -91.407}; 
          
          var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 10, 
            center: centerPoint
          });
        }
        //CREATES ONCLICK EVENT//
        google.maps.event.addListener(map, 'click', function(event) { //OnClick Function that generates a new marker
          placeMarker(event.latLng); //Save this info to the database
        });

        //ONCLICK EVENT - ADDS MARKER
        function placeMarker(location) { //Shows the user where their marker is placed
          var title = prompt("Enter a name for your marker: "); //Ask user for input
          reader.close(); //close scanner
          var marker = new google.maps.Marker({ 
            position: markerPoint,
            map: map,
            title: title //call reader as title of new marker
          });
        }
        </script>
        <script async defer
          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAXN1Lb8qN-4PW7PQ9nmBc9BZHb56gpttM&callback=initMap">
        </script>        
        </div>
				<h1>Check Your Area For Rides</h1>
				<p>Download the following map if you want to see the area that we have our carpool services available in:</p>
				<a id="mapDownload" href="assets/img/chippewaValleyMap.png" target="_blank">Map Download</a><br><br>
				<form id="checkForRides">
					<input type="text" id="pickup" name="pickup" placeholder="Enter your Pickup Location...">
					<input type="text" id="pickup" name="destination" placeholder="Enter your Destination...">
					<br>
					<input type="submit" value="Search">
				</form>
			</section>
			<!--
			<section class="infoRight">
				<h1>Section 4</h1>
				<p>Information Section 4</p>
			</section>
			-->
		</div>
	</body>
	<br>
	<%@ include file="includes/footer.jsp" %>
	<%@ include file="includes/scripts.jsp" %>
</html>