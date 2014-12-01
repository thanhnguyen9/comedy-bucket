class Comment < ActiveRecord::Base
  validates :post, presence: true

  belongs_to :user
end
