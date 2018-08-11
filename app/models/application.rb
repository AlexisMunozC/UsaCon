class Application < ActiveRecord::Base
  belongs_to :student
  belongs_to :vacant
  validates :student, :vacant, presence: true
end
