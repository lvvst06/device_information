module DeviceEventLogs
  class Create
    def initialize(attributes)
      @attributes = attributes
    end

    def execute
      DeviceEventLog.create!(@attributes)
    end
  end
end
