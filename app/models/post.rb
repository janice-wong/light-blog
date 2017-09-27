class Post < ApplicationRecord
  validates :title, presence: true
  validates :post, presence: true
  has_many :comments
  # belongs_to :user
end
