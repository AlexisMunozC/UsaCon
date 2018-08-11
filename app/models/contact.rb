class Contact < ActiveRecord::Base
  belongs_to :student
  belongs_to :company
  has_many :messages
  validates :student, :company, presence: true
end
