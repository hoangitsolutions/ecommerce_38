# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(name: "Điện Thoại",
                 parent_id: 0)

Category.create!(name: "Samsung",
                 parent_id: 1)

Category.create!(name: "Nokia",
                 parent_id: 1)

Category.create!(name: "Xiaomi",
                 parent_id: 1)
Category.create!(name: "Sony",
                 parent_id: 1)