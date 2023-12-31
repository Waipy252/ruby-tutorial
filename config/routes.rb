Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root "static_pages#home"
  get '/help', to:'static_pages#help', as: "help"
  get '/about', to:'static_pages#about', as: "about"
  get '/contact', to:'static_pages#contact', as: "contact"
  get '/signup',  to: 'users#new', as: "signup"
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  
  resources :microposts
  resources :users
end
