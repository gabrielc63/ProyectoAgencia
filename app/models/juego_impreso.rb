class JuegoImpreso < ActiveRecord::Base
  belongs_to :subagencia

  validates :quiniela, presence: true
end
