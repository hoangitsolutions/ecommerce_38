class AddCategoriesRefToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :categories, foreign_key: true
  end
end
