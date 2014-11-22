class VideoSerializer < ActiveModel::Serializer
  attributes :id, :url, :artist_id

  has_one :artist
  embed :ids, include: true
end
