class AddPriceToInventory < ActiveRecord::Migration[7.0]
  def change
    add_column :inventories, :price, :float
  end
end
