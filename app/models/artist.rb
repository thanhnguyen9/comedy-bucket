class Artist < ActiveRecord::Base
  has_many :schedules
  has_many :videos

  include PgSearch
  pg_search_scope :search_by_name, :against => :name
end
