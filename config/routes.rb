Rails.application.routes.draw do
 

  resources :subcategories
  resources :comments
  devise_for :users

  root 'statics#homepage'
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'

  get 'statics/faq'
  get 'statics/aboutus'

  # get 'events/:id/comments/new', to: 'comments#new', :as => "new_comment_with_event"

  resources :events
  
  
  get 'events/:id/iCal', to: "events#iCal", as: "iCal"


end
