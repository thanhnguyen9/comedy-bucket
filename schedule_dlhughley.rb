require 'faraday'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000')

  schedules = [
    {
      place_name: "Laurie Auditorium",
      location: "San Antonio, TX",
      time: "DEC 06 2014, 08:00",
      artist_id: 2
    },
    {
      place_name: "Wilbur Theatre",
      location: "Boston, MA",
      time: "DEC 26 2014, 07:30",
      artist_id: 2
    },
    {
      place_name: "Hu Ke Lau",
      location: "Chicopee, MA",
      time: "DEC 27 2014, 07:00",
      artist_id: 2
    },
    {
      place_name: "Hu Ke Lau",
      location: "Chicopee, MA",
      time: "DEC 27 2014, 10:30",
      artist_id: 2
    },
    {
      place_name: "Harrah's Casino",
      location: "New Orleans, LA",
      time: "JAN 30 2015, 07:00",
      artist_id: 2
    },
    {
      place_name: "Harrah's Casino",
      location: "New Orleans, LA",
      time: "JAN 30 2015, 09:30",
      artist_id: 2
    },
    {
      place_name: "Masonic Temple",
      location: "Detroit, MI",
      time: "FEB 28 2015, 07:00",
      artist_id: 2
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
