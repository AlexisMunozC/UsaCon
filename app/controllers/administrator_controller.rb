class AdministratorController < ApplicationController
    before_filter :ComprobarSesiones
    
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
    #FUNCION REGISTRAR
    def crear_registro
       admin = Administrator.new
       admin.email = "cbtis@gmail.com"
       admin.password = "hola1234"
       admin.save
    end
end
