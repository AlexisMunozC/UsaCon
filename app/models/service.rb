class Service < ActiveRecord::Base
  has_many :vacancies
  validates :description, presence: true
end
