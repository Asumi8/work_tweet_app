class User < ApplicationRecord
  has_many :blogs, dependent: :destroy
  validates :name, presence: true, length: {maximum:30}
  before_validation {email.downcase!}
  validates :email, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_secure_password
  validates :password, presence: true, length: {minimum:6}
end
