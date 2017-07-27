Rails.application.routes.draw do

  get '/admin' => 'admin#index'
  put '/admin/:id' => 'admin#update'
  patch '/admin/:id' => 'admin#update'


  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :apartments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'apartments#homepage'
  post 'apartments/find'
end
