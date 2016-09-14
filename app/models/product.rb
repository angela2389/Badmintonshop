class Product < ApplicationRecord
  belongs_to :category
  has_many :orderitems
  has_many :orders

  def decrease_stock(quantity)
    self.stock = self.stock - quantity
    self.save
  end

end
