class Order < ApplicationRecord
	has_many :oder_details, dependent: :destroy
	belongs_to :user
	validates :total, presence: true
	validates :note
	validates :status, presence: true
end
