class Product < ApplicationRecord
  belongs_to :category
  has_many :orderitems
  has_many :orders

  def decrease_stock(quantity)
    self.stock = self.stock - quantity
    self.save
  end

  def in_stock?
    if self.stock >= 1
      return true
    end
  end

  def negative_stock(quantity)
    if (self.stock - quantity) < 0 
      return true
    end
  end
end
