class Product < ActiveRecord::Base
  belongs_to :user

  def embed(url)
    youtube = url.split("=").last
    src = "http://www.youtube.com/embed/#{youtube}"
  end
end
