class Group < ActiveRecord::Base
  belongs_to :student
  validates :group, presence: true
end
