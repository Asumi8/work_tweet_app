class Blog < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :content, presence: true
end
