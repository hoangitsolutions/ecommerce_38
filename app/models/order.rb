class Order < ApplicationRecord
	has_many :oder_details, dependent: :destroy
	belongs_to :user
	validates :total, presence: true
	validates :note
	validates :status, presence: true
	
	def subtotal
		order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
	end
	private
	def set_order_status
		self.order_status_id = 1
	end

	def update_subtotal
		self[:subtotal] = subtotal
	end
end