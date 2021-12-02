class Suscriber < ApplicationRecord
  #Validations
  validates :email, presence: true, uniqueness: true
  after_create :welcome_email

  def welcome_email
    SuscriberMailer.welcome_email(self).deliver
  end
end
