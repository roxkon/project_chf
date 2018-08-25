// Initialize and add the map
function initMap() {
  // The location of CannaHub
  var cannahub = {lat: 52.243155, lng: 20.944292};
  // The map, centered at CannaHub
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 12, center: cannahub});
  // The marker, positioned at CannaHub
  var marker = new google.maps.Marker({position: cannahub, map: map});
}