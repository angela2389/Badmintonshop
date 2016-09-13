class AddColumnsToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :comments, :text
    add_column :orders, :paymentmethod, :string
  end
end
