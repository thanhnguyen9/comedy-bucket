class Product < ActiveRecord::Base

  validates :title, length: { minimum: 5, maximum: 60}
  validates :url, presence: true
  validates :info, presence: true

  belongs_to :user
  has_many :comments

  def embed(url)
    youtube = url.split("=").last
    src = "http://www.youtube.com/embed/#{youtube}"
  end

  def thumbnail(url)
    youtube = url.split("=").last
    a = "http://img.youtube.com/vi/#{youtube}/default.jpg"
  end
end
