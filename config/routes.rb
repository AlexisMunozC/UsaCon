Rails.application.routes.draw do
  
  devise_for :companies
  devise_for :students
  devise_for :administrators
end
