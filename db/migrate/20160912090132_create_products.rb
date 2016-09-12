class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :reference_number
      t.text :sub_header
      t.text :description
      t.string :image
      t.decimal :price
      t.integer :stock
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
