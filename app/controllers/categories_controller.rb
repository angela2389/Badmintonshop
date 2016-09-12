class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @products = Product.all
  end

  def show
    @categories = Artist.find(params[:id])
    @products = Product.all
  end

end
