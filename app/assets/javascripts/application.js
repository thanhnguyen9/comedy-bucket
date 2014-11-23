// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .


$(window).ready(function(){

  window.map = L.map('map').setView([40.737, -93.923], 4);

  L.tileLayer('//{s}.tiles.mapbox.com/v3/{id}/{z}/{x}/{y}.png', {
    maxZoom: 13,
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
    '<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
    'Imagery © <a href="http://mapbox.com">Mapbox</a>',
    id: 'examples.map-i875mjb7'
  }).addTo(window.map);



  $.getJSON("/api/schedules")
   .done(function(data){
     console.log(data.schedules)
    data.schedules.forEach(function(schedule){
       if (schedule.artist_id == 1) {
        console.log("h3");
      }
      L.marker([schedule.lat, schedule.lng])
        .addTo(window.map)
        .bindPopup(schedule.place_name);
    });
  });


});
