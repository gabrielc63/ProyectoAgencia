class Preimpreso < ActiveRecord::Base
  belongs_to :agencia
  enum tipo:  [:telekino, :maradona, :telebingo]
end
