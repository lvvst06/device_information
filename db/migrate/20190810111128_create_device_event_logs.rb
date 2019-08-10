class CreateDeviceEventLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :device_event_logs do |t|
      t.string :event_name
      t.datetime :timestamp

      t.timestamps
    end
  end
end
