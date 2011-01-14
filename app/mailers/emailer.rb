class Emailer < ActionMailer::Base
  default :from => "DeadLetterOfficeHQ@gmail.com"
  
  def send_email(recipient)
    @recipient = recipient
    mail(:to => @recipient.email, :subject => "#{@recipient.name.upcase} has sent you a message!")
  end
end
