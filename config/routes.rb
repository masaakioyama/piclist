Rails.application.routes.draw do
  root to: "pics#index"
  get 'home/index'
  get 'home/authentication'
  devise_for :users
  resources :pics
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
