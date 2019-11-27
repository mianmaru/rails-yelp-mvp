class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # VALIDATIONS
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone_number, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES }

  # # retrieve all the reviews for a restaurant
  # def reviews
  #   Review.where(restaurant_id: self.id)
  # end
end
