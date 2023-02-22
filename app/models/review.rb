class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: {
    in: (0..5),
    message: 'This is not a valid rating'
  }
  validates :rating, numericality: { only_integer: true }
end
