Rails.application.routes.draw do
  
  get 'home/index'
  root 'home#index'

  devise_for :companies, controllers: {sessions: 'company/sessions', registrations: 'company/registrations'}
  devise_for :students, controllers: {sessions: 'student/sessions', registrations: 'student/registrations'}
  get 'new_student/sign_in'
  post 'new_student/sign_in_form'
  delete 'new_student/destroy'
  devise_for :administrators, controllers: {sessions: 'administrator/sessions', registrations: 'administrator/registrations'}
end
