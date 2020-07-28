Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  root 'application#home'
  # resources :users
  

  # resources :categories
  # resources :triviagames
  # resources :sessions

	# resources :users do
  #       resources :categories, only: [:index, :show]
  #       resources :likes, only: [:show]
  #   end
  
	# resources :games do 
  #   	resources :rounds, except: :index
  #     resources :categories
  #   end

	# namespace :admin do
  #   	resources :triviagames
  #     resources :questions
  #   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
