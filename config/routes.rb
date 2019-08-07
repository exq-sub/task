Rails.application.routes.draw do
  
  resources :entries
  #get 'entries/new'
  get 'entries/create'
  #get 'rails/mailers/entry_inquiry_mailer'
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
