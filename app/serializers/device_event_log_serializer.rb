 class DeviceEventLogSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :timestamp, :created_at_timestamp

  def created_at_timestamp
    object.created_at.to_s
  end
end
