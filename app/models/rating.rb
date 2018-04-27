class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :rate_num, presence: true
  validates :ipaddress, presence: true
end
