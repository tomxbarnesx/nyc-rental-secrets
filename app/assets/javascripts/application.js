// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery

$(document).ready(function() {
  $(".menu .item").tab({ history: false });
});

var placeSearch, autocomplete, geocoder;

$(document).ready(function() {
  if (window.name !== null) {
    document.getElementById("mapSearch").value = window.name;
    document.getElementById("title").innerText = window.name;
    window.name = "";
  }
});

function initAutocomplete() {
  geocoder = new google.maps.Geocoder();
  autocomplete = new google.maps.places.Autocomplete(
    document.getElementById("autocomplete") /*,
      {types: ['(cities)']}*/
  );

  autocomplete.addListener("place_changed", fillInAddress);
}

function codeAddress(address) {
  geocoder.geocode({ address: address }, function(results, status) {
    if (status == "OK") {
      console.log(search);
      alert(results[0].geometry.location);
    } else {
      alert("Geocode was not successful for the following reason: " + status);
    }
  });
}

function fillInAddress() {
  var place = autocomplete.getPlace();
  search = document.getElementById("autocomplete").value;

  //   codeAddress(document.getElementById('autocomplete').value);
}

function initMap() {
  let main = {
    zoom: 8,
    center: { lat: 40.7128, lng: -74.006 }
  };

  let map = new google.maps.Map(document.getElementById("map"), main);

  let marker = new google.maps.Marker({
    position: { lat: 40.7128, lng: -74.006 },
    map: map,
    draggable: true
  });

  var searchBox = new google.maps.places.SearchBox(
    document.getElementById("mapSearch")
  );

  map.addListener("bounds_changed", function() {
    searchBox.setBounds(map.getBounds());
  });

  var markers = [];

  searchBox.addListener("places_changed", function() {
    var places = searchBox.getPlaces();

    if (places.length == 0) {
      return;
    }

    markers.forEach(function(marker) {
      marker.setMap(null);
    });

    markers = [];

    var bounds = new google.maps.LatLngBounds();
    places.forEach(function(place) {
      if (!place.geometry) {
        console.log("Returned place contains no geometry");
        return;
      }
      var icon = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25)
      };

      markers.push(
        new google.maps.Marker({
          map: map,
          icon: icon,
          title: place.name,
          position: place.geometry.location
        })
      );

      let title = document.getElementById("title");
      title.innerText = markers[0].title;
      let splitted = markers[0].title.toUpperCase().split(" ");

      $.ajax({
        url:
          "https://data.cityofnewyork.us/resource/muk7-ct23.json?$where=(starts_with(house_number, '" +
          splitted[0] +
          "') AND starts_with(house_street, '" +
          splitted[1] +
          "'))",
        type: "GET",
        data: {
          $limit: 10000000,
          $$app_token: "euroQs7GENEsqbV3te6FVNUGf"
        }
      }).done(function(data) {
        console.log(data);

        document.getElementById("bin").value = data[0].bin;
        document.getElementById("bin1").value = data[0].bin;
      });

      if (place.geometry.viewport) {
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
    });
    map.fitBounds(bounds);
  });
}
