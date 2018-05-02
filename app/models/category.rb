class Category < ApplicationRecord
  has_many :products, dependent: :destroy, foreign_key: "category_id"
  has_many :subcategories, class_name: Category.name,
  foreign_key: :parent_id,
  dependent: :destroy,
  inverse_of: false

  validates :name, presence: true, length: {maximum: Settings.category.name_length}
  scope :by_parent_id_not_match_id, ->(id){where("parent_id <> :id or parent_id IS NULL", id: id)}
  scope :by_name, ->(name){where name: name}
  scope :by_id_not_match, ->(id){where.not id: id}
end
