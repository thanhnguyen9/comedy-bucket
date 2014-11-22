require 'faraday'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000')

  schedules = [
    {
      place_name: "Hampton Coliseum",
      location: "Hampton, VA",
      time: "December 30 2014, 07:00",
      artist_id: 1
    },
    {
      place_name: "Hampton Coliseum",
      location: "Hampton, VA",
      time: "December 30 2014, 10:30",
      artist_id: 1
    },
    {
      place_name: "Mohegun Sun Arena",
      location: "Uncasvillle, CT",
      time: "April 18 2015, 08:00",
      artist_id: 1
    }
  ]

  schedules.each do |schedule|

  response = conn.post do |req|
    req.url '/api/schedules.json'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      schedules:{
          place_name: schedule[:place_name],
          location: schedule[:location],
          time: schedule[:time],
          artist_id: schedule[:artist_id]
        }
      }.deep_stringify_keys.to_json

    end
end
