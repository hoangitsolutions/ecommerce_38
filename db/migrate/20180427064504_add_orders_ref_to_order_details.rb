class AddOrdersRefToOrderDetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :order_details, :order, foreign_key: true
  end
end
