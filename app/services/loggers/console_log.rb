module Loggers
  class ConsoleLog < Loggers::LogText
    def execute
      p @text
    end
  end
end
