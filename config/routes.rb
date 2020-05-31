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

 post '/posts/new', to: 'posts#create'

 get 'setting', to: 'posts#setting'
 get 'myposts', to: 'posts#myposts'
 get 'mycomments', to: 'posts#mycomments'
 get 'commentstome', to: 'posts#commentstome'
 get 'postsselected', to: 'posts#postsselected'
  post '/comments/:id', to: 'comments#create'
  put '/comments/:id', to: 'comments#create'
  get 'edit_pass', to: 'users#edit_pass'
  patch 'update_pass', to: 'users#update_pass'
  patch 'update_veri', to: 'users#update_veri'
  get 'verification', to: 'users#verification'
  resources :posts
  resources :users do
      resources :posts,:comments
  end
   resources :posts do
      resources :comments
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
