class ApplicationMailer < ActionMailer::Base
  default from: "alexandermoreno1765@gmail.com"
  layout "mailer"

  def contact_form(name, email, message)
    @name = name
    @message = message
    mail(to: email, subject: 'Contact Form')
  end
end
