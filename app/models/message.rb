class Message < ActiveRecord::Base
  belongs_to :contact
  validates :contact, :message, presence: true
end
