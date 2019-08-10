class Api::DeviceEventLogsController < ApplicationController
  def create
    device_event_log = DeviceEventLogs::Create.new(create_params).execute
    render json: json_with_success(message: 'created successfully', data: DeviceEventLogSerializer.new(device_event_log))
  end

  private

  def create_params
    params.require(:event_name)
    params.require(:timestamp)
    params.permit(:event_name, :timestamp).to_h
  end
end
