require 'faraday'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000')



  names = ["Kevin Hart", "D.L Hughley", "Chris Rock", "Dave Chappelle", "Martin Lawrence", "Louis CK", "Gabriel Iglesias", "Bill Burr", "Bill Cosby", "Brian Regan", "Daniel Tosh", "Jeff Dunham", "George Lopez", "Jerry Seinfeld", "Jim Gaffigan"]

  names.each do |i|

  response = conn.post do |req|
    req.url '/api/artists.json'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      artists: {

        name: i
      }
    }.deep_stringify_keys.to_json
  end

end
