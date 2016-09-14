module OrdersHelper
    def format_orderprice(order)
      number_to_currency(order.total_price, :unit=>'€')
    end

    def format_shippingcharges(order)
      number_to_currency(order.shippingcharges, :unit=>'€')
    end
end
