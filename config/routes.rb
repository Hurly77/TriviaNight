Rails.application.routes.draw do
  root "application#home)"
	get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  resouces :categories
  resouces :triviagames

	resouces :users do
        resouces :categories only: [:index, :show]
        resouces :likes only: [:show]
    end
  
	resouces :games do 
    	resources :rounds except: :index
      resouces :categories
    end

	namespace :admin do
    	resources :TriviaGame
      resources :Questions
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
