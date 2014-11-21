require 'faraday'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000')

10.times do

  name = ["Kevin Hart", "D.L Hughley", "Chris Rock", "Dave Chappelle", "Martin Lawrence", "Louis CK", "Gabriel Iglesias", "Bill Burr", "Bill Cosby", "Brian Regan", "Daniel Tosh", "Jeff Dunham", "George Lopez", "Jerry Seinfeld", "Jim Gaffigan"].sample



  response = conn.post do |req|
    req.url '/api/artists.json'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      artists: {

        name: name
      }
    }.deep_stringify_keys.to_json
  end

end
