class Departament < ActiveRecord::Base
  belongs_to :student
  has_many :vacancies
  has_many :professional_strengths
  validates :descripcion, presence: true
end
