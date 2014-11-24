class Artist < ActiveRecord::Base
  has_many :videos
  has_many :schedules

  include PgSearch
  pg_search_scope :search_by_name, :against => :name
end
