module ProductsHelper
  def format_price(product)
    number_to_currency(product.price, :unit=>'€')
  end
end
