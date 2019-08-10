module Loggers
  class EmailLog < Loggers::LogText
    def execute
      AdminMailer.loggers(@text)
    end
  end
end
