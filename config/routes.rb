Rails.application.routes.draw do
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  get 'logout', to: 'logins#destroy'
  resources :students, except: [:destroy]
end
