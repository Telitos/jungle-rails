class ApplicationMailer < ActionMailer::Base
  default from: "telitos@gmail.com"
   # default from: "no-reply@jungle.com"
  layout 'mailer'
end
