class Agencia < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true
  validates :titular, presence: true
end
