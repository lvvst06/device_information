class Loggers
  def initialize(text, mode = :console)
    @text = text
    @mode = mode
  end

  def execute
    case @mode
    when :console
      p @text}
    when :file
      write_file
    when :mail
      send_email
    end
  end

  private

  def write_file
    file = File.open('log/loggers.txt', 'w')
    file.puts @text
    file.close
  end

  def send_email
    AdminMailer.delay.loggers(@text)
  end
end
