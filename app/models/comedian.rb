class Comedian < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 15}
end
