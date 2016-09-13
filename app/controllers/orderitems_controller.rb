class OrderitemsController < ApplicationController

  def show
    @orderitem = Order.find(params[:id])
    @order = Order.find(params[:order_id])
  end

end
