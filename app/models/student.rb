class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:control_number]
  has_one :departament
  has_one :group
  has_many :applications
  has_many :contacts
  validates :control_number, :CURP, :name, :last_name, :mother_last_name, presence: true

  protected
  def password_required? 
    false 
  end 
  def email_required?
    false
  end
end
