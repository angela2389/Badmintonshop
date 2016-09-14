module OrderitemsHelper
  def format_orderitemprice(orderitem)
    number_to_currency(orderitem.subtotal, :unit=>'€')
  end
end
