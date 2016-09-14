require "rails_helper"

describe "When an orderitem is created" do
  it "it is connected to an order" do
    order1 = Order.create( total_price: 100)
    orderitem1 = Orderitem.create({ quantity: 1, order: order1 })

    assert(orderitem1.order == order1)
  end
end
