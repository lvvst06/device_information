module Loggers
  class FileLog < Loggers::LogText
    def execute
      file = File.open('log/loggers.txt', 'w')
      file.puts @text
      file.close
    end
  end
end
