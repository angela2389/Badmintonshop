Rails.application.routes.draw do
  devise_for :users
  # In case of using the user controller:
  #  devise_for :users, controllers: {
  #    sessions: 'users/sessions'
  #  }
 # end
  root 'categories#index'
  resources :orders

  resources :categories
  get 'products/rackets' => "products#rackets"
  get 'products/shuttles' => "products#shuttles"
  get 'products/clothes' => "products#clothes"
  resources :products do
    collection do
      get :edit_multiple
      put :update_multiple
    end
  end

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/checkout' => 'cart#checkout'
  get '/cart/:id' => 'cart#add', as: :add_cart
  get '/cart/remove/:id' => 'cart#remove', as: :remove_cart
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
