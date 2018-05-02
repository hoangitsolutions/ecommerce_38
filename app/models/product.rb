class Product < ApplicationRecord
 belongs_to :category
 has_many :images, dependent: :destroy
 has_many :comments, dependent: :destroy
 has_many :order_details, dependent: :destroy
 has_many :ratings, dependent: :destroy
 validates :name, presence: true
 validates :price, presence: true
 validates :quantity, presence: true
 validates :description, presence: true
end
