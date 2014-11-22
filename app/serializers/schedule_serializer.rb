class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :place_name, :location, :time, :artist_id

  has_one :artist
  embed :ids, include: true
end
