class AddTotalpriceToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :total_price, :integer
  end
end
