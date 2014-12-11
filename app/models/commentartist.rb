class Commentartist < ActiveRecord::Base
  validates :post, presence: true
  belongs_to :user
  belongs_to :artist
end
