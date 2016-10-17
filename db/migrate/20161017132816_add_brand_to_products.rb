class AddBrandToProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :brand
    add_reference :products, :brand, foreign_key: true
  end
end
