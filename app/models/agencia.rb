class Agencia < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true
  validates :titular, presence: true

  def Agencia.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Agencia.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = Agencia.digest(Agencia.new_remember_token)
    end
end
