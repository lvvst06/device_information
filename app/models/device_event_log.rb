class DeviceEventLog < ApplicationRecord
  validates_presence_of :event_name, :timestamp
end
