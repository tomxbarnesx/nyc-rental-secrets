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
//= require jquery
//= require_tree .

$(document).ready(function() {
  $(".menu .item").tab({ history: false });
});

var violations = {
  "01": "ACCIDENT - CONSTRUCTION/PLUMBING",
  "03": "ADJACENT BUILDINGS - NOT PROTECTED",
  "04": "AFTER HOURS WORK - ILLEGAL",
  "05": "PERMIT - NONE (BUILDING/ PA/ DEMO ETC.)",
  "06": "CONSTRUCTION - CHANGE GRADE / CHANGE WATERCOURSE",
  "09": "DEBRIS - EXCESSIVE",
  "10": "DEBRIS/BUILDING -FALLING OR IN DANGER OF FALLING",
  "12": "DEMOLITION-UNSAFE/ILLEGAL/MECHANICAL DEMO",
  "13": "ELEVATOR IN (FDNY) READINESS-NONE",
  "14": "EXCAVATION - UNDERMINING ADJACENT BUILDING",
  "15": "FENCE - NONE/INADEQUATE/ILLEGAL",
  "16": "INADEQUATE SUPPORT/SHORING",
  "18": "MATERIAL STORAGE - UNSAFE",
  "20": "LANDMARK BUILDING - ILLEGAL WORK",
  "21": "SAFETY NET/GUARD RAIL-DAMAGED/INADEQUATE/NONE(OVER 6 STY/75 FT)",
  "23":
    "SIDEWALK SHED/SUPPORTED SCAFFOLD/ INADEQUATE/ DEFECTIVE/ NONE/NO PMT/NO CERT",
  "29": "BUILDING - VACANT, OPEN AND UNGUARDED",
  "30": "BUILDING SHAKING/VIBRATING/STRUCT STABILITY AFFECTED",
  "31": "CERTIFICATE OF OCCUPANCY - NONE/ILLEGAL/CONTRARY TO CO",
  "35": "CURB CUT/DRIVEWAY/CARPORT - ILLEGAL",
  "37": "EGRESS - LOCKED/BLOCKED/IMPROPER/NO SECONDARY MEANS",
  "45": "ILLEGAL CONVERSION",
  "49": "STOREFRONT OR BUSINESS SIGN/AWNING/MARQUEE/CANOPY – ILLEGAL",
  "50": "SIGN FALLING - DANGER/SIGN ERECTION OR DISPLAY IN PROGRESS – ILLEGAL",
  "52": "SPRINKLER SYSTEM - INADEQUATE",
  "53": "VENT/EXHAUST - ILLEGAL/IMPROPER",
  "54": "WALL/RETAINING WALL - BULGING/CRACKED",
  "55": "ZONING - NON-CONFORMING",
  "56": "BOILER - FUMES/SMOKE/CARBON MONOXIDE",
  "58": "BOILER - DEFECTIVE / INOPERATIVE / NO PERMIT",
  "59": "ELECTRICAL WIRING – DEFECTIVE / EXPOSED, IN PROGRESS",
  "62": "ELEVATOR-DANGER CONDITION/SHAFT OPEN/UNGUARDED",
  "63": "ELEVATOR - DEFECTIVE / INOPERATIVE",
  "65": "GAS HOOK-UP/PIPING - ILLEGAL OR DEFECTIVE",
  "66": "PLUMBING WORK - ILLEGAL/NO PERMIT(ALSO SPRINKLER/STANDPIPE)",
  "67": "CRANE - NO PERMIT/LICENSE/CERT/UNSAFE/ILLEGAL",
  "71": "SRO - ILLEGAL WORK/NO PERMIT/CHANGE IN OCCUP-USE",
  "73": "FAILURE TO MAINTAIN",
  "74": "ILLEGAL COMMERCIAL/MANUFACTURING USE IN RESIDENTIAL ZONE",
  "75": "ADULT ESTABLISHMENT",
  "76": "UNLICENSED/ILLEGAL/IMPROPER PLUMBING WORK IN PROGRESS",
  "77": "CONTRARY TO LL58/87 (HANDICAP ACCESS)",
  "78": "PRIVATELY OWNED PUBLIC SPACE/NON-COMPLIANCE",
  "79": "LIGHTS FROM PARKING LOT SHINING ON BUILDING",
  "80": "ELEVATOR NOT INSPECTED/ILLEGAL/NO PERMIT",
  "81": "ELEVATOR - ACCIDENT",
  "82": "BOILER - ACCIDENT/EXPLOSION",
  "83": "CONSTRUCTION -CONTRARY/BEYOND APPROVED PLANS/PERMITS",
  "85": "FAILURE TO RETAIN WATER / IMPROPER DRAINAGE (LL103/89)",
  "86": "WORK CONTRARY TO STOP WORK ORDER",
  "88": "SAFETY NET/GUARD RAIL-DAM/INADEQ/NONE(6FL.75 FT OR LESS)",
  "89": "ACCIDENT-CRANES/DERRICKS/SUSPENSION",
  "90": "UNLICENSED/ILLEGAL ACTIVITY",
  "91": "SITE CONDITIONS ENDANGERING WORKERS",
  "92": "ILLEGAL CONVERSION OF MANUFACTURING/INDUSTRIAL SPACE",
  "93": "REQUEST FOR RETAINING WALL SAFETY INSPECTION",
  "94": "PLUMBING-DEFECTIVE/LEAKING/NOT MAINTAINED",
  "1A": "ILLEGAL CONVERSION COMMERCIAL BLDG/SPACE TO DWELLING UNITS",
  "1B": "ILLEGAL TREE REMOVAL/TOPO. CHANGE IN SNAD",
  "1D": "CON EDISON REFERRAL",
  "1E": "SUSPENDED (HANGING) SCAFFOLDS- NO PMT/LIC/DANGEROUS/ACCIDENT",
  "1G": "STALLED CONSTRUCTION SITE",
  "1K": "BOWSTRING TRUSS TRACKING COMPLAINT",
  "1Z": "ENFORCEMENT WORK ORDER (DOB)",
  "2A": "POSTED NOTICE OR ORDER REMOVED/TAMPERED WITH",
  "2B": "FAILURE TO COMPLY WITH VACATE ORDER",
  "2C": "SMOKING BAN – SMOKING ON CONSTRUCTION SITE",
  "2D": "SMOKING SIGNS – “NO SMOKING SIGNS” NOT OBSERVED ON CONSTRUCTION SITE",
  "2E": "DEMOLITION NOTIFICATION RECEIVED",
  "2F": "BUILDING UNDER STRUCTURAL MONITORING",
  "2G": "ADVERTISING SIGN/BILLBOARD/POSTERS/FLEXIBLE FABRIC – ILLEGAL",
  "2H": "SECOND AVENUE SUBWAY CONSTRUCTION",
  "2J": "SANDY - BUILDING DESTROYED",
  "2K": "STRUCTURALLY COMPROMISED BUILDING (LL33/08)",
  "2L": "FAÇADE (LL11/98)- UNSAFE NOTIFICATION",
  "2M": "MONOPOLE TRACKING COMPLAINT",
  "3A": "UNLICENSED/ILLEGAL/IMPROPER ELECTRICAL WORK IN PROGRESS",
  "4A": "ILLEGAL HOTEL ROOMS IN RESIDENTIAL BUILDINGS",
  "4B": "SEP - PROFESSIONAL CERTIFICATION COMPLIANCE AUDIT",
  "4C": "EXCAVATION TRACKING COMPLAINT",
  "4D": "INTERIOR DEMO TRACKING COMPLAINT",
  "4F": "SST TRACKING COMPLAINT",
  "4G": "ILLEGAL CONVERSION NO ACCESS FOLLOW-UP",
  "4J": "M.A.R.C.H. PROGRAM (INTERAGENCY)",
  "4K": "BEST - DM TRACKING COMPLAINT",
  "4L": "BEST - HIGH-RISE TRACKING COMPLAINT",
  "4M": "BEST - LOW-RISE TRACKING COMPLAINT",
  "4N": "RETAINING WALL TRACKING COMPLAINT",
  "4P": "LEGAL/PADLOCK TRACKING COMPLAINT",
  "4W": "WOODSIDE SETTLEMENT PROJECT",
  "5A": "REQUEST FOR JOINT FDNY/DOB INSPECTION",
  "5B": "NON-COMPLIANCE W/LIGHTWEIGHT MATERIALS",
  "5C": "STRUCTURAL STABILITY IMPACTED - NEW BUILDING UNDER CONSTRUCTION",
  "5E": "AMUSEMENT RIDE ACCIDENT/INCIDENT",
  "5F": "COMPLIANCE INSPECTION",
  "5G": "UNLICENSED/ILLEGAL/IMPROPER WORK IN PROGRESS",
  "6A": "VESTING INSPECTION"
};

function removeDuplicates(myArr, prop) {
  return myArr.filter((obj, pos, arr) => {
    return arr.map(mapObj => mapObj[prop]).indexOf(obj[prop]) === pos;
  });
}

function stringCleaner(arr) {
  if (arr[1].match(/[0-9]/g) && arr[2] == "AVE") {
    return (cleaned = [arr[0], arr[1].slice(0, -2), "AVENUE"]);
  } else if (arr[1].match(/[0-9]/g) && arr[2] == "ST") {
    return (cleaned = [arr[0], arr[1].slice(0, -2), "STREET"]);
  } else if (arr.length == 4 && arr[2].match(/(TH|RD|ST|RD)/g)) {
    if (arr[1] == "E" && arr[3] == "ST") {
      return (cleaned = [arr[0], "EAST", arr[2].slice(0, -2), "STREET"]);
    } else if (arr[1] == "W" && arr[3] == "ST") {
      return (cleaned = [arr[0], "WEST", arr[2].slice(0, -2), "STREET"]);
    }
  } else {
    return (cleaned = arr);
  }
}

function stringCombiner(arr) {
  if (arr.length == 3) {
    return (cleaned = [arr[0], arr[1] + " " + arr[2]]);
  } else if (arr.length == 4) {
    return (cleaned = [arr[0], arr[1] + " " + arr[2] + " " + arr[3]]);
  }
}

var placeSearch, autocomplete, geocoder;

$(document).ready(function() {
  if (window.name !== null) {
    document.getElementById("mapSearch").value = window.name;

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
      geoLocation = results[0].geometry.location;

      console.log(results[0].geometry.bounds.f["f"]);
      console.log(results[0].geometry.bounds.b["f"]);

      let geoLocation1 = results[0].geometry.bounds.b["f"];
      let geoLocation2 = results[0].geometry.bounds.f["f"];
      localStorage.setItem("geoLocation1", geoLocation1);
      localStorage.setItem("geoLocation2", geoLocation2);
    } else {
      alert("Geocode was not successful for the following reason: " + status);
    }
  });
}

function fillInAddress() {
  var place = autocomplete.getPlace();
  search = document.getElementById("autocomplete").value;

  codeAddress(document.getElementById("autocomplete").value);
}

function initMap() {
  let main = {
    zoom: 16,
    center: { lat: Number(geoLocation1), lng: Number(geoLocation2) }
  };

  let map = new google.maps.Map(document.getElementById("map"), main);

  let marker = new google.maps.Marker({
    position: { lat: Number(geoLocation1), lng: Number(geoLocation2) },
    map: map,
    draggable: true
  });

  var searchBox = new google.maps.places.SearchBox(
    document.getElementById("mapSearch")
  );

  if (document.getElementById("mapSearch").value != null) {
    let splitted = document
      .getElementById("mapSearch")
      .value.toUpperCase()
      .split(" ");

    cleaned = [];
    stringCleaner(splitted);
    stringCombiner(cleaned);
    console.log(cleaned);

    $.ajax({
      url:
        "https://data.cityofnewyork.us/resource/muk7-ct23.json?$where=(starts_with(house_number, '" +
        cleaned[0] +
        "') AND starts_with(house_street, '" +
        cleaned[1] +
        "'))",
      type: "GET",
      data: {
        $limit: 10000000,
        $$app_token: "euroQs7GENEsqbV3te6FVNUGf"
      }
    }).done(function(data) {
      console.log(data);

      let newData = removeDuplicates(data, "complaint_number");
      console.log(newData);
      for (let j = 0; j < newData.length; j++) {
        if (violations[newData[j].complaint_category] == undefined) {
          continue;
        }
        document
          .getElementById("vcontainer")
          .insertAdjacentHTML(
            "afterbegin",
            '<div class="ui card"><div class="content"><label><a class="ui teal right ribbon label">' +
              newData[j].status +
              '</a></label><div class="header">' +
              newData[j].date_entered +
              '</div><div class="description"><p>' +
              violations[newData[j].complaint_category] +
              "</p></div></div></div>"
          );
      }

      document.getElementById("title").innerText = document.getElementById(
        "mapSearch"
      ).value;
      document.getElementById("bin").value = data[0].bin;
      document.getElementById("bin1").value = data[0].bin;
    });
  }

  map.addListener("bounds_changed", function() {
    searchBox.setBounds(map.getBounds());
  });

  var markers = [];

  searchBox.addListener("places_changed", function() {
    var places = searchBox.getPlaces();
    $("#reveal").fadeIn();
    $("#vcontainer").empty();
    $(".cont").empty();
    $("#showMe").css("display", "none");

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
      title.innerText = document.getElementById("mapSearch").value;

      let splitted = markers[0].title.toUpperCase().split(" ");
      cleaned = [];
      stringCleaner(splitted);
      stringCombiner(cleaned);
      console.log(cleaned);

      $.ajax({
        url:
          "https://data.cityofnewyork.us/resource/muk7-ct23.json?$where=(starts_with(house_number, '" +
          cleaned[0] +
          "') AND starts_with(house_street, '" +
          cleaned[1] +
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
        document.getElementById("bin1").innerText = data[0].bin;

        let newData = removeDuplicates(data, "complaint_number");
        console.log(newData);
        for (let j = 0; j < newData.length; j++) {
          if (violations[newData[j].complaint_category] == undefined) {
            continue;
          }
          document
            .getElementById("vcontainer")
            .insertAdjacentHTML(
              "afterbegin",
              '<div class="ui card"><div class="content"><label><a class="ui teal right ribbon label">' +
                newData[j].status +
                '</a></label><div class="header">' +
                newData[j].date_entered +
                '</div><div class="description"><p>' +
                violations[newData[j].complaint_category] +
                "</p></div></div></div>"
            );
        }
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
