class AddProductsRefToRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :ratings, :product, foreign_key: true
  end
end
