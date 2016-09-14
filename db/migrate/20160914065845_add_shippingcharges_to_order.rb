class AddShippingchargesToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :shippingcharges, :decimal
  end
end
