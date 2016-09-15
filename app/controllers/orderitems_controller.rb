class OrderitemsController < ApplicationController
  load_and_authorize_resource

  def show
    @orderitem = Order.find(params[:id])
    @order = Order.find(params[:order_id])
  end

end
