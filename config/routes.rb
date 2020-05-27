Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

 post '/forums/new', to: 'forums#create'

 get 'setting', to: 'forums#setting'
  
  resources :forums
  resources :users do
      resources :posts
  end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
