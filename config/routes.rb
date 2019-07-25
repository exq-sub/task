Rails.application.routes.draw do
  
  
  get 'sessions/new'
  root 'homes#top'
  get 'homes/description'
  
  resources :users
  resources :items
  
  get 'logout' => 'sessions#destroy'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end 
