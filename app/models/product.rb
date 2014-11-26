class Product < ActiveRecord::Base
  belongs_to :user

  def embed(url)
    youtube = url.split("=").last
    src = "http://www.youtube.com/embed/#{youtube}"
  end

  def thumbnail(url)
    youtube = url.split("=").last
    a = "http://img.youtube.com/vi/#{youtube}/default.jpg"
  end
end
