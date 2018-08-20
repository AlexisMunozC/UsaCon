class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  protected
  def devise_parameter_sanitizer
    if resource_class == Student
      Student::ParameterSanitizer.new(Student, :student, params)
    else
      super
    end
  end
  def session_active
    if current_administrator || current_student || current_company
      redirect_to :controller => '/home', :action => 'index'
    end
  end
end
