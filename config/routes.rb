Rails.application.routes.draw do
    get 'index/index'
    root "index#index"
    
    
    get "student/registrar"
    post "student/crear_registro"
    
    get "student/ingresar"
    post "student/crear_ingreso"
    
    get "company/registrar"
    post "company/crear_registro"
    
    get "company/ingresar"
    post "company/crear_ingreso"
    
    get "administrator/ingresar"
    post "administrator/crear_ingreso"
    
end
