Rails.application.routes.draw do
    get "Bienvenido", to:'index#index'
    get "Salir", to:"application#cerrar_sesiones"
    root "index#index"
    
    #STUDENT
        get "Registro-Estudiantes", to: "student#registrar"
        post "student/crear_registro"
        
        get "Estudiantes",to:"student#ingresar"
        post "student/crear_ingreso"
    
    #COMPANY
        get "Registro-Empresas" ,to: "company#registrar"
        post "company/crear_registro"
        
        get "Empresas",to: "company#ingresar"
        post "company/crear_ingreso"
    
    #ADMIN
        get "Admin", to: "administrator#ingresar"
        post "administrator/crear_ingreso"
        
        #TEMPORAAAAAAl
        get "administrator/crear_registro"
    
    #VACANT
        get "Home" ,to: "vacant#mostrar"
end
