class Schedule < ActiveRecord::Base


  belongs_to :artist

  geocoded_by :location, :latitude => :lat, :longitude => :lng
  after_validation :geocode

end
