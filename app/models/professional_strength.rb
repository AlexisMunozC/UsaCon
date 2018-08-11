class ProfessionalStrength < ActiveRecord::Base
  belongs_to :departament
  validates :departament, :description, presence: true
end
