class AddProductsRefToOrderDetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :order_details, :products, foreign_key: true
  end
end
