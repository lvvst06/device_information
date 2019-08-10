class Loggers
  class << self
    def log(mode, text)
      case mode
      when :console
        p text
      when :file
        write_file(text)
      when :mail
        send_mail(text)
      end
    end

    private

    def write_file(text)
      file = File.open('log/loggers.txt', 'w')
      file.puts text
      file.close
    end

    def send_mail(text)
      AdminMailer.delay.loggers(text)
    end
  end
end
