class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :place_name, :location, :time, :lat, :lng, :artist_id

  has_one :artist
  embed :ids, include: true
end
