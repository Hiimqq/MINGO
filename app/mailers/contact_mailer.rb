class ContactMailer < ActionMailer::Base
  default to: 'alex-carmody@knights.ucf.edu'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact From Message')
  end
end