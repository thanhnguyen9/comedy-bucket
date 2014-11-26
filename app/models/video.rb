class Video < ActiveRecord::Base
  belongs_to :artist

  def thumbnail(url)
    youtube = url.split("/").last
    a = "http://img.youtube.com/vi/#{youtube}/default.jpg"
  end
end
