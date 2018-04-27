class AddOrdersRefToOrderDetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :order_details, :orders, foreign_key: true
  end
end
