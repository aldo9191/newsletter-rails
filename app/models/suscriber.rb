class Suscriber < ApplicationRecord
  #Validations
  validates :email, presence: true, uniqueness: true

end
