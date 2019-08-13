describe DeviceEventLogWorker do
  let(:worker) { DeviceEventLogWorker }
  let(:attributes) do
    {
      event_name: 'test',
      timestamp: '2017-10-01 06:00:01'
    }
  end

  before { worker.new.perform(attributes) }

  specify do
    device_event_log = DeviceEventLog.last
    expect(device_event_log.event_name).to eq(attributes[:event_name])
    expect(device_event_log.timestamp).to eq(attributes[:timestamp])
  end
end
