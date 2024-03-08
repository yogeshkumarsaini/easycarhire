

function calculateDistance() {
    var address1 = "<?php echo htmlentities($result->FromAddress);?>"
    var address2 = "<?php echo htmlentities($result->ToAddress);?>"
  
    // Get the coordinates for address 1
    getCoordinates(address1, function(coords1) {
      // Get the coordinates for address 2
      getCoordinates(address2, function(coords2) {
        // Calculate the distance between the two coordinates
        var distance = haversineDistance(coords1.lat, coords1.lng, coords2.lat, coords2.lng);
  
        console.log("The distance between the two addresses is: " + distance.toFixed(2) + " km");
      });
    });
  }
  
  function getCoordinates(address, callback) {
    var url = "https://nominatim.openstreetmap.org/search?format=json&q=" + encodeURIComponent(address);
  
    fetch(url)
      .then(function(response) {
        return response.json();
      })
      .then(function(data) {
        if (data.length > 0) {
          var location = data[0];
          var coords = {
            lat: parseFloat(location.lat),
            lng: parseFloat(location.lon)
          };
  
          callback(coords);
        } else {
          console.log("Geocoding failed: No results found for the address.");
        }
      })
      .catch(function(error) {
        console.log("Geocoding failed: " + error);
      });
  }
  
  function haversineDistance(lat1, lng1, lat2, lng2) {
    var earthRadius = 6371; // Earth's radius in kilometers
  
    var dLat = toRad(lat2 - lat1);
    var dLng = toRad(lng2 - lng1);
  
    var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) *
      Math.sin(dLng / 2) * Math.sin(dLng / 2);
  
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
  
    var distance = earthRadius * c;
  
    return distance;
  }
  
  function toRad(value) {
    return value * Math.PI / 180;
  }
  
  // Call the calculateDistance function
  calculateDistance();