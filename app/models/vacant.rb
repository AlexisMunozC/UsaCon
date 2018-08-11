class Vacant < ActiveRecord::Base
  belongs_to :company
  belongs_to :departament
  belongs_to :service
  has_many :applications
  validates :company, :name, :departament, :service, :function, :vacancy_numbers, :working_hours,
            :reference_name_1, :reference_number_phone_1, :reference_name_2, :reference_number_phone_2, 
            :benefits ,presence: true
end
