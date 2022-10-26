class User < ApplicationRecord
  has_many :blogs, dependent: :destroy
  # validates :name
  # validates :email
  # validates :password
end
