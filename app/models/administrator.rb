require 'bcrypt'

class Administrator < ActiveRecord::Base
 
  include BCrypt

  def password
    @password ||= Password.new(password_encrypted)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_encrypted = @password
  end
end
