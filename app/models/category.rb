class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :name, presence: true, length: {maximum: Settings.category.name_length}
  validates :parent_id, presence: true
end
