class CartController < ApplicationController
  def add
    id = params[:id]
    # if the cart has already been created use the existing cart else create a new cart
    if session[:cart]
      cart = session[:cart]
    else session[:cart] = {}
      cart = session[:cart]
    end
    # if the product has already been added to the cart, increment the value. else set the value
    if cart[id]
      cart[id] += 1
    else
      cart[id] = 1
    end
    redirect_to :action => :index
  end

  def remove
    id = params[:id]
    cart = session[:cart]

    if cart[id] == 1
      cart.delete(id)
    else
      cart[id] -= 1
    end
    redirect_to :action => :index
  end

  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def index
    # if there is a cart, pass it to the page for display else pass an empty value
    if session[:cart]
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  def checkout
      @cart = session[:cart]
      @order = Order.create(user: current_user)
  end

  def createorder
      @cart = session[:cart]
      @order = Order.create(user: current_user)
  end
end
