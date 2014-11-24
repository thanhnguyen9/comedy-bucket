class Artist < ActiveRecord::Base
  has_many :videos
  has_many :schedules

  scope :search, -> (query) { where("name LIKE ?", "%#{query}")}
end
