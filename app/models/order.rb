class Order < ApplicationRecord
  belongs_to :user
  has_many :orderitems

  def total_price
    
  end

end
