class AddProductRefToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :products, foreign_key: true
  end
end
