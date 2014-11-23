class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo, :info
end
