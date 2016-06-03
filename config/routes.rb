Rails.application.routes.draw do
 

  devise_for :users
  root 'statics#homepage'
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  resources :events
  
end
