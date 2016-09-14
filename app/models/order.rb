class Order < ApplicationRecord
  belongs_to :user
  has_many :orderitems

  def shippingcharges?
    if self.total_price < 50
      self.shippingcharges = 3.50
      self.total_price = self.total_price + self.shippingcharges
    end
  else
    self.shippingcharges = 0.00
  end
end
