class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :vacancies
  has_many :contacts
  validates :RFC, :name, :business_activity, :address, :zip_code, :phone_number, :civil_association,
            :res_name, :res_schedule, :res_phone_number, :res_email, presence: true
end
