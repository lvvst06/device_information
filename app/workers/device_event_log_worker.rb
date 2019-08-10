class DeviceEventLogWorker
  include Sidekiq::Worker

  def perform(attributes)
    DeviceEventLog.create!(attributes)
  end
end
