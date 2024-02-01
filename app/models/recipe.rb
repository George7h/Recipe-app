class Recipe < ApplicationRecord
  belongs_to :user

  has_many :recipe_foods

  validates :name, presence: true
  validates :description, length: { minimum: 500 }
  validates :preparation_time, numericality: { greater_than_or_equal_to: 0 }
  validates :cooking_time, numericality: { greater_than_or_equal_to: 0 }
end
