Rails.application.routes.draw do
  
  
  #get 'orders/new'
  get 'sessions/new'
  root 'homes#top'
  get 'homes/description'
  get 'homes/entry'
  
  #get '/items/:id' => 'items#show'
  resources :users
  resources :items
  resources :orders
  
  get 'logout' => 'sessions#destroy'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end 
