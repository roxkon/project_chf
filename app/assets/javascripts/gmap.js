// Initialize and add the map
function initMap() {
  // The location of CannaHub
  var cannahub = {lat: 52.243155, lng: 20.944292};
  // InwoWindow - text to display after click on marker
  var contentString = '<strong>Canna Hub Sp. z o.o.</strong><br/><span>ul. Ciołka 17<br/> Warszawa, Polska</span>';
  var infowindow = new google.maps.InfoWindow({
            content: contentString
  });
  // The map, centered at CannaHub
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 17, center: cannahub});
  // The marker, positioned at CannaHub
  var marker = new google.maps.Marker({
    position: cannahub, 
    map: map,
    title: 'Canna Hub Sp. z o.o. \nul. Ciołka 17 Warszawa, Polska',
  });
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });
}

