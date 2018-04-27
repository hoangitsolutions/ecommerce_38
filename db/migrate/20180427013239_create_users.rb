class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.string :passwords
      t.integer :role
      t.string :address
      t.decimal :phone, precision: 11, scale: 2
      t.timestamps
    end
  end
end
