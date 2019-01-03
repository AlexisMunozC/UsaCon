Rails.application.routes.draw do
    root "student#registrar"
    get "student/registrar"
    post "student/crear_registro"
    
    get "student/ingresar"
    post "student/crear_ingreso"
    
    get "company/registrar"
    post "company/crear_registro"
    
    
    
end
