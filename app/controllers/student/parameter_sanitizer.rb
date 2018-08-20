class Student::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_in, keys:[:control_number,:password])
  end
end