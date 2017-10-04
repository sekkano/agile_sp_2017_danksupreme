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
