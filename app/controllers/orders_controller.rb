class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

    # GET /orders
    # GET /orders.json
    def index
      @orders = Order.all
    end

    def checkout
      @cart = session[:cart]
    end

    # GET /orders/1
    # GET /orders/1.json
    def show
      @order = Order.find(params[:id])
    end

    # GET /orders/new
    def new
      @order = Order.new
      @cart = session[:cart]
    end

    # GET /orders/1/edit
    def edit
    end

    # POST /orders
    # POST /orders.json
    def create
      @cart = session[:cart]
      @order = Order.create(order_params)
      @order.user = current_user

      @cart.each do | id, quantity|
      @order.orderitems.new(product_id: id, quantity: quantity)

      respond_to do |format|
        if @order.save
          format.html { redirect_to @order, notice: 'order was successfully created.' }
          format.json { render :show, status: :created, location: @order }
        else
          format.html { render :new }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
      session[:cart] = nil
    end
  end

    # PATCH/PUT /orders/1
    # PATCH/PUT /orders/1.json
    def update
      respond_to do |format|
        if @order.update(params[:id])
          format.html { redirect_to @order, notice: 'order was successfully updated.' }
          format.json { render :show, status: :ok, location: @order }
        else
          format.html { render :edit }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /orders/1
    # DELETE /orders/1.json
    def destroy
      @order.destroy
      respond_to do |format|
        format.html { redirect_to orders_url, notice: 'order was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_order
        @order = Order.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def order_params
        params.require(:order).permit(:comments, :paymentmethod)
      end
  end
