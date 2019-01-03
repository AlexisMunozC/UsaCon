class CompanyController < ApplicationController
    #VISTA REGISTRO
    def registrar
        
    end
    
    #FUNCION REGISTRO
    def crear_registro
        @params = params[:new_company]
        new_company = Company.new
        new_company.email = @params[:email]
        new_company.RFC = @params[:RFC]
        new_company.name = @params[:name]
        new_company.business_activity = @params[:business_activity]
        new_company.address = @params[:address]
        new_company.zip_code = @params[:zip_code]
        new_company.phone_number = @params[:phone_number]
        new_company.civil_association = @params[:civil_association]
        new_company.res_name = @params[:res_name]
        new_company.res_schedule = #{@params[:res_schedule_1]} + " a " + #{@paramas[:res_schedule_2]}
        new_company.res_phone_number = @params[:res_phone_number]
        new_company.res_email = @params[:res_email]
        new_company.password = @params[:password]
        new_company.save
        
        redirect_to action: "registrar"
        
    end
    
    
    #VISTA INICIAR SESION
    def ingresar
        
    end
    #FUNCION INICIAR SESION    
    def crear_ingreso
        @params = params[:new_company_session]
        company = Company.where("email = ?",@params[:email]).first
        if company != nil
            if company.password == @params[:password]
                session[:company_session] = company.id
            else
                flash[:alert] = "Correo o contraseña son incorrectos"
            end
        else
            flash[:alert] = "Correo o contraseña son incorrectos"
        end
        redirect_to action: "ingresar"
    end
end
