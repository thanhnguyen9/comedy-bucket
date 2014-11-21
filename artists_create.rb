require 'faraday'
require 'active_support/all'

conn = Faraday.new(:url => 'https://pizza-places.herokuapp.com/')

10.times do

  name = ["Kevin Hart", "D.L Hughley", "Chris Rock", "Dave Chappelle", "Martin Lawrence", "Louis CK", "Gabriel Iglesias", "Bill Burr", "Bill Cosby", "Brian Regan", "Daniel Tosh", "Jeff Dunham", "George Lopez", "Jerry Seinfeld", "Jim Gaffigan"].sample



  response = conn.post do |req|
    req.url '/api/pizza_joints.json'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      artists: {

        name: name
      }
    }.deep_stringify_keys.to_json
  end

end
