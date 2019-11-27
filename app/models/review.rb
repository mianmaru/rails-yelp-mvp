class Review < ApplicationRecord
  belongs_to :restaurant

  # VALIDATIONS
  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATINGS }, numericality: { only_integer: true }
  validates :content, presence: true
end
