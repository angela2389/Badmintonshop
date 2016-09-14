class ChangeTotalPriceTypeInOrders < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :total_price, :decimal
  end
end
