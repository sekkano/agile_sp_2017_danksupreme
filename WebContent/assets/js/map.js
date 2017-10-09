function initMap() { 
  var centerPoint = {lat: 45.060, lng: -91.407}; 
  
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 10, 
    center: centerPoint
  });
}