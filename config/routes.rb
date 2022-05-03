Rails.application.routes.draw do
  post '/login' => 'sessions#create'
  post 'password/reset'
  post 'password/forgot'
  resources :drivers
  resources :trucks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
