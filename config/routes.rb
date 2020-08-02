Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  root 'application#home'
  resources :games do
    resources :rounds
    match '/delete/rounds', to: 'rounds#destroy', via: [:get, :post]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
