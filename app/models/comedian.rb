class Comedian < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 15}
  paginates_per 10
end
