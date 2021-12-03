class Suscriber < ApplicationRecord
  #Validations
  validates :email, presence: true, uniqueness: true
  validate :checked_preferences, on: :create
  after_create :welcome_email

  def checked_preferences
    unless preference1 || preference2 || preference3
      errors.add("You must select at least one preference")
    end
  end
  
  
  def welcome_email
    SuscriberMailer.welcome_email(self).deliver
  end
end
