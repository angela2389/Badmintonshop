class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @categories = Category.all
    @products = Product.all
  end

end
