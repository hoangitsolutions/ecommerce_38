class User < ApplicationRecord
  attr_accessor :remember_token, :activation_token
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  validates :name, presence: true, length: {maximum: Settings.user.name_length}
  before_save{email.downcase!}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: Settings.user.email_length},
  format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: Settings.user.password_length}, allow_nil: true
  validates :role, presence: true
  validates :address, presence: true, length: {maximum: Settings.user.address_length}
  validates :phone, presence: true, length: {maximum: Settings.user.phone_length}
end
