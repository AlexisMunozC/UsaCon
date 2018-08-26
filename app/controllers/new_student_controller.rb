class NewStudentController < ApplicationController
  before_action :session_active, except: [:destroy,:edit,:destroy]
  
  def sign_in
    
  end
  def sign_in_form
    form_params = params[:sign_in_new_student]
    student = Student.where("CURP = ? AND control_number = ? ",form_params[:CURP],form_params[:control_number]).first
    if student == nil
      render 'sign_in'
    else
      #p student.control_number
      session[:new_student] = student.control_number
      #p session[:new_student]
      redirect_to controller: "/new_student", action: "edit"
    end
  end
  def destroy
    session[:new_student] = nil
    render 'sign_in'
  end
  
  def edit
    #AQUI
  end
  def update
    
  end
  
end
