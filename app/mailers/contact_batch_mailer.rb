class ContactBatchMailer < ActionMailer::Base
  default from: "your_address_to_reply_to@example.com"
  def contact_batch_email(name, email, message, subject, recipient)
    @message = message
    @name = name
    @email = email
    @subject = subject
    @recipient = recipient
    mail(to: recipient, :reply_to => email, name: @name, subject: @subject)
  end
end