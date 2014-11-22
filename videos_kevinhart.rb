require 'faraday'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000')



  links = ["https://www.youtube.com/watch?v=fVYaYlG24eM", "https://www.youtube.com/watch?v=jVRym-scL-g", "https://www.youtube.com/watch?v=H53Gn-e5elY"]

  links.each do |url|

  response = conn.post do |req|
    req.url '/api/videos.json'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      videos: {
        artist_id: 1,
        url: url
      }
    }.deep_stringify_keys.to_json
  end

end
