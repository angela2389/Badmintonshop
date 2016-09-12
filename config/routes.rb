Rails.application.routes.draw do
  devise_for :users
  resources :categories
  get 'products/rackets' => "products#rackets"
  get 'products/shuttles' => "products#shuttles"
  get 'products/clothes' => "products#clothes"

  resources :products

  root 'categories#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
