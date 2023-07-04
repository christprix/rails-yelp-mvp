class Restaurant < ApplicationRecord
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews
  validates :category, inclusion: categories
  validates :name, :address, :category, presence: true
end
