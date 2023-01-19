Rails.application.routes.draw do
 root 'pages#home'
 get 'home', to: 'pages#home'
 get 'about', to: 'pages#about'
 
 resources :articles #only: [:show]
end
