require "rails_helper"

describe "When a product is created" do
  it "it saved its price" do
    product1 = Product.create( price: 100)

    assert(product1.price == 100)
  end
end

  describe "When decrease_stock is called" do
    it "the stock goes down by quantity" do
      quantity = 1
      product1 = Product.create( stock: 10)

      product1.decrease_stock(quantity)

      assert(product1.stock == 9)
    end
  end
