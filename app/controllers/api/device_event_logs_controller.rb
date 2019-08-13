class Api::DeviceEventLogsController < ApplicationController
  def create
    DeviceEventLogWorker.perform_async(create_params)
    render json: json_with_success(message: 'created successfully')
  end

  private

  def create_params
    params.require(:event_name)
    params.require(:timestamp)
    params.permit(:event_name, :timestamp).to_h
  end
end
