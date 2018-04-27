class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
