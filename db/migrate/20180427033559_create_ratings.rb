class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :rate_num
      t.string :ipaddress

      t.timestamps
    end
  end
end
