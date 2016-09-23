class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

    # GET /orders
    # GET /orders.json
    def index
      @orders = Order.all.sort_by &:id
      authorize! :read, @order
    end

    def checkout
      @cart = session[:cart]
    end

    # GET /orders/1
    # GET /orders/1.json
    def show
      @order = Order.find(params[:id])
      authorize! :read, @order
    end

    # GET /orders/new
    def new
      @cart = session[:cart]
      session[:order_params] ||= {}
      @order = Order.new(session[:order_params])
      @order.current_step = session[:order_step]
    end

    # GET /orders/1/edit
    def edit
    end

    # POST /orders
    # POST /orders.json
    def create
      @cart = session[:cart]
      session[:order_params].deep_merge!(order_params) if order_params
      @order = Order.new(session[:order_params])
      @order.user = current_user
      @order.status = "In progress"
      @order.total_price = 0.00
      @order.current_step = session[:order_step]
      if params[:back_button]
        @order.previous_step
      elsif @order.last_step?
        @order.save
        @cart.each do | id, quantity|
          @product = Product.find(id)
          if @product.negative_stock(quantity) === true
            redirect_to cart_path, notice: 'There is not enough stock to complete your order' and return
          end
          @product.decrease_stock(quantity)
          @order.orderitems.new(product_id: id, quantity: quantity, subtotal: quantity * @product.price)
          @order.calculatetotalprice(quantity, @product.price)
          @order.shippingcharges?
          @order.save
        end
      else
        @order.next_step
      end
      session[:order_step] = @order.current_step

      if @order.new_record?
        render 'new'
      else
        session[:order_step] = session[:order_params] = nil
        session[:cart] = nil
        flash[:notice] = "Order has successfully been created"
        redirect_to @order
      end
    end

    # PATCH/PUT /orders/1
    # PATCH/PUT /orders/1.json
    def update
      respond_to do |format|
        if @order.update(order_params)
          format.html { redirect_to orders_path, notice: 'Order was successfully updated.' }
          format.json { render :show, status: :ok, location: @order }
        else
          format.html { render :edit }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    end

    def update_to_shipping
      authorize! :update, @order
      Order.where(id: params[:order_ids]).update_all(status: "Shipped")
      redirect_to orders_path
    end

    # DELETE /orders/1
    # DELETE /orders/1.json
    def destroy
      authorize! :destroy, @order
      @order.destroy
      respond_to do |format|
        format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
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
        params.require(:order).permit(:comments, :paymentmethod, :status, :deliveryaddress)
      end
    end
