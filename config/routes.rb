Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 devise_for :users, :controllers => { :registrations => "my_registrations" }

  root 'categories#index'
  resources :orders do
    collection do
      put :update_to_shipping
    end
  end

  resources :categories
  get 'products/search' => "products#search"
  get 'products/categoryfilter' => "products#categoryfilter"
  get 'products/brandfilter' => "products#brandfilter"
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
