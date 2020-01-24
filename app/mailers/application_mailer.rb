class ApplicationMailer < ActionMailer::Base
  #  default from: "example@gmail.com"
    layout 'mailer'

  def contact_email(contact)
    @contact = contact
    mail(to: @contact.email, subject: '[CONTACTO WEB] - ' + @contact.name)
  end
end
