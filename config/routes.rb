Rails.application.routes.draw do
  get 'meal_plans/new'
  get 'meal_plans/edit'
  get 'sessions/new'
  root 'static_pages#home'
  
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new', as: 'new_user'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
