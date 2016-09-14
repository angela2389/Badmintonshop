require "rails_helper"

describe "When an order is created" do
  it "it saved its price" do
    order1 = Order.create(total_price: 80.00)

    assert(order1.total_price == 80.00)
  end
end

describe "If the order is lower than 50" do
  it "Add 3.50 shippingcharges" do
    order2 = Order.create(total_price: 40.00)

    order2.shippingcharges?

    assert(order2.total_price == 43.50)
  end

end
