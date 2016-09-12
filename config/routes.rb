Rails.application.routes.draw do
  devise_for :users
  # In case of using the user controller:
  #  devise_for :users, controllers: {
  #    sessions: 'users/sessions'
  #  }
 # end
  root 'categories#index'

  resources :categories
  get 'products/rackets' => "products#rackets"
  get 'products/shuttles' => "products#shuttles"
  get 'products/clothes' => "products#clothes"
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
