class AdminMailer < ApplicationMailer
  def loggers(text)
    @text = text
    mail(to: 'admin@device_information.com', subject: 'Loggers')
  end
end
