class Subagencia < ActiveRecord::Base
  belongs_to :agencia
  has_many :juegos_impreso

  validates :numero_subagencia, presence: true
  validates :email, presence: true
  validates :titular, presence: true
  validates :domicilio, presence: true
  validates :telefono, presence: true
end
