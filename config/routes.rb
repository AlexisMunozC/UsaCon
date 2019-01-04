Rails.application.routes.draw do
    get 'index/index'
    get "application/cerrar_sesiones"
    root "index#index"
    
    #STUDENT
        get "student/registrar"
        post "student/crear_registro"
        
        get "student/ingresar"
        post "student/crear_ingreso"
    
    #COMPANY
        get "company/registrar"
        post "company/crear_registro"
        
        get "company/ingresar"
        post "company/crear_ingreso"
    
    #ADMIN
        get "administrator/ingresar"
        post "administrator/crear_ingreso"
        
        #TEMPORAAAAAAl
        get "administrator/crear_registro"
    
    #VACANT
        get "vacant/mostrar"
end
