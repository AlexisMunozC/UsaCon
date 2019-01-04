class ApplicationController < ActionController::Base
    
    def cerrar_sesiones
       session[:admin_session] = nil
       session[:student_session] = nil
       session[:company_session] = nil
       redirect_to controller: "index", action: "index"
    end
    
    
    def ComprobarSesiones
        if session[:admin_session] != nil || session[:student_session] != nil || session[:company_session] != nil 
            redirect_to controller: "vacant", action: "mostrar" 
        end
    end
    
    def ComprobarNoSesiones
        if session[:admin_session] == nil && session[:student_session] == nil && session[:company_session] == nil 
            redirect_to controller: "index", action: "index" 
        end 
    end

end
