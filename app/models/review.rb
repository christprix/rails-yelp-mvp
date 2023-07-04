class Review < ApplicationRecord
  belongs_to :restaurant
  ratings = (0..5)
  validates_associated :restaurant
  validates :rating, numericality: { only_integer: true }
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: ratings }
end
