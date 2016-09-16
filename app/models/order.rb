class Order < ApplicationRecord
  attr_writer :current_step

  belongs_to :user
  has_many :orderitems
  has_many :products, through: :orderitems

  def shippingcharges?
    if self.total_price < 50
      self.shippingcharges = 3.50
      self.total_price = self.total_price + self.shippingcharges
    else
      self.shippingcharges = 0.00
    end
  end

  def calculatetotalprice(quantity, price)
    self.total_price = self.total_price + quantity * price
  end

  def current_step
    @current_step || steps.first
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
  self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
  current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def steps
    %w[shipping billing confirmation]
  end
end
