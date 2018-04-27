class AddUsersRefToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :users, foreign_key: true
  end
end
