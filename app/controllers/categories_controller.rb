class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @categories = Category.all
    @products = Product.joins(:orderitems).group("products.id").order("count(product_id) DESC").limit(4)
  end

  def show
    @categories = Category.all
    @products = Product.all
  end
end
