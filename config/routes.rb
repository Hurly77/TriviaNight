Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  root 'application#home'
  # resources :users
  
    get '/questions', to: 'questions#request_api', as: 'questions'
   resources :categories
  # resources :triviagames
  # resources :sessions

	# resources :users do
  #       resources :categories, only: [:index, :show]
  #       resources :likes, only: [:show]
  #   end
  
	resources :games do 
      resources :rounds, except: :index
  end

	# namespace :admin do
  #   	resources :triviagames
  #     resources :questions
  #   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
