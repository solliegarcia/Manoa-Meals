Rails.application.routes.draw do
  get 'dishes/create'
  get 'dishes/new'
  get 'welcome/index'
  root 'welcome#index'
  get 'meal_plans/new'
  post 'meal_plans/create'
  get 'meal_plans/edit'
  get 'sessions/new'
  root 'static_pages#home'
  get 'meal_plans/new/update_dish_list', to: 'meal_plans#update_dish_list', as: 'update_dish_list'
  get 'meal_plans/new/custom_dish', to: 'meal_plans#custom_dish', as: 'custom_dish' 
  post 'meal_plans/new/refresh_dish_list', to: 'meal_plans#refresh_dish_list', as: 'refresh_dish_list'
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new', as: 'new_user'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :meal_plans
  resources :dishes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
