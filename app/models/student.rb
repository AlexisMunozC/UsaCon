require 'bcrypt'

class Student < ActiveRecord::Base
    has_many :applications
    has_many :contacts
    
    belongs_to :departament
    belongs_to :group
    
    include BCrypt

    def password
        @password ||= Password.new(password_encrypted)
    end
    
    def password=(new_password)
        @password = Password.create(new_password)
        self.password_encrypted = @password
    end

end
