Rails.application.routes.draw do
 devise_for :users
 root 'pages#home'
 get 'home', to: 'pages#home'
 get 'about', to: 'pages#about'
 
 resources :articles do #only: [:show]
  member do 
    get :like
  end
 end
end
