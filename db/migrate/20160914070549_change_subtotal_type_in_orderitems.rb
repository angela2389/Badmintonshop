class ChangeSubtotalTypeInOrderitems < ActiveRecord::Migration[5.0]
  def change
    change_column :orderitems, :subtotal, :decimal
  end
end
