class SuscriberMailer < ApplicationMailer

  def welcome_email(suscriber)
    @suscriber = suscriber
    mail to: suscriber.email, subject: "Thanks for suscribing!", from: "no-reply@micolet.com"
  end
end
