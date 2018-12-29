class Group < ActiveRecord::Base
  has_many :students
  validates :group, presence: true
end
