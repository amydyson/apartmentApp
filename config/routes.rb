Rails.application.routes.draw do
  devise_for :users
  resources :apartments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'apartments#homepage'
  post 'apartments/find'
end
