class Subagencia < ActiveRecord::Base
  validates :numero_subagencia, presence: true
  validates :email, presence: true
  validates :titular, presence: true
  validates :domicilio, presence: true
  validates :telefono, presence: true
end
