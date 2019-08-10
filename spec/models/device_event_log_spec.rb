describe DeviceEventLog do
  it { is_expected.to validate_presence_of :event_name }
  it { is_expected.to validate_presence_of :timestamp }
end
