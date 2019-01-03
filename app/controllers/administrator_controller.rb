class AdministratorController < ApplicationController
    #VISTA INICIAR SESION
    def ingresar
        
    end
    #FUNCION INICIAR SESION    
    def crear_ingreso
        @params = params[:new_admin_session]
        admin = Administrator.where("email = ?",@params[:email]).first
        if admin != nil
            if admin.password == @params[:password]
                session[:admin_session] = admin.id
            else
                flash[:alert] = "Correo o contraseña son incorrectos"
            end
        else
            flash[:alert] = "Correo o contraseña son incorrectos"
        end
        redirect_to action: "ingresar"
    end
end
