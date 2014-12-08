class VideoSerializer < ActiveModel::Serializer
  attributes :id, :url, :info

  has_one :artist
  embed :ids, include: true
end
