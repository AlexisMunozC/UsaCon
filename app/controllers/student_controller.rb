class StudentController < ApplicationController
    #VISTA REGISTRO 
    def registrar
        @especialidades = Departament.all 
        @grupos = Group.all
    end
    
    #FUNCION REGISTRO
    def crear_registro
        p params[:new_student]
        @params = params[:new_student]
        new_student = Student.new
        new_student.email =  @params[:email]
        new_student.control_number =  @params[:control_number]
        new_student.name =  @params[:name]
        new_student.last_name =  @params[:last_name]
        new_student.mother_last_name =  @params[:mother_last_name]
        new_student.CURP =  @params[:CURP]
        new_student.departament_id =  @params[:departament]
        new_student.group_id =  @params[:group]
        new_student.phone_number =  @params[:phone_number]
        new_student.zip_code =  @params[:zip_code]
        new_student.previous_school =  @params[:previous_school]
        new_student.age =  @params[:age]
        new_student.password =  @params[:password]
        new_student.save
        
        redirect_to action: "registrar"
    end
end
