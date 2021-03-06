class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  def categoryfilter
    @products = Product.joins(:category).where(categories: {name: params[:category]})
    @category = Category.find_by(name: params[:category])
    @brands = Brand.joins(:products).group("brands.id").where(:products => {category: @category})
  end

  def brandfilter
    @products = Product.joins(:category).where(:brand => params[:filter], :categories  => {name: params[:category]})
    @category = Category.find_by(name: params[:category])
    @brands = Brand.joins(:products).group("brands.id").where(:products => {category: @category})
  end

  def search
    @products = Product.where(["lower(name) LIKE ?","%#{params[:search].downcase}%"])
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
    authorize! :create, @product
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    authorize! :create, @product

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    authorize! :update, @product

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    authorize! :destroy, @product
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit_multiple
    authorize! :update, @product
    @products = Product.find(params[:product_ids])
  end

  def update_multiple
    authorize! :update, @product
    @products = Product.update(params[:products].keys, params[:products].values)
    @products.reject! { |p| p.errors.empty? }
    if @products.empty?
      redirect_to products_url
    else
      render "edit_multiple"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :reference_number, :sub_header, :brand, :description, :image, :price, :stock, :category_id)
    end
end
