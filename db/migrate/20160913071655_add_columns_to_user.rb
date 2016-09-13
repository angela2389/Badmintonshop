class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street, :string
    add_column :users, :house_number, :integer
    add_column :users, :postal, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    remove_column :users, :name, :string
  end
end
