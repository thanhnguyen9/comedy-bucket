class Artist < ActiveRecord::Base
  has_many :videos
  has_many :schedules
end
