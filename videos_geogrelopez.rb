require 'faraday'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000')

  links = ["https://www.youtube.com/watch?v=aM1QhIBFBVs", "https://www.youtube.com/watch?v=Z13CVD0idrM", "https://www.youtube.com/watch?v=6u8nCvGtGaU", "https://www.youtube.com/watch?v=2aVWvYgxX6E", "https://www.youtube.com/watch?v=ovKmLaQmXZI"]

  links.each do |url|

  response = conn.post do |req|
    req.url '/api/videos.json'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      videos: {
        artist_id: 13,
        url: url
      }
    }.deep_stringify_keys.to_json
  end

end
