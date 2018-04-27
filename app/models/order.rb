class Order < ApplicationRecord
  has_many :oder_detail, dependent: :destroy
  belongs_to :user
  validates :total
  validates :note
  validates :status
end
