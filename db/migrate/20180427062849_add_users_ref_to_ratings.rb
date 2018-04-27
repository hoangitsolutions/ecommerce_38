class AddUsersRefToRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :ratings, :users, foreign_key: true
  end
end
