class Departament < ActiveRecord::Base
  has_many :students
  has_many :vacancies
  has_many :professional_strengths
  validates :descripcion, presence: true
end
