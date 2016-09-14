class Product < ApplicationRecord
  belongs_to :category
  has_many :orderitems
  has_many :orders

  def decrease_stock
    self.stock = self.stock - 1
    self.save
  end

end
