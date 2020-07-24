Rails.application.routes.draw do
  root "application#home)"
	get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  resources :categories
  resources :triviagames

	resources :users do
        resources :categories, only: [:index, :show]
        resources :likes, only: [:show]
    end
  
	resources :games do 
    	resources :rounds, except: :index
      resources :categories
    end

	namespace :admin do
    	resources :triviagames
      resources :questions
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
