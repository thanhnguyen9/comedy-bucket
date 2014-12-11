class Artist < ActiveRecord::Base
  has_many :schedules
  has_many :videos
  has_many :commentartists

  include PgSearch
  pg_search_scope :search_by_name, :against => :name
end
