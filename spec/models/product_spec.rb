require "rails_helper"

describe "When a product is created" do
  it "it saved its price" do
    product1 = Product.create( price: 100)

    assert(product1.price == 100)
  end
end
