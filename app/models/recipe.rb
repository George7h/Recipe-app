class Recipe < ApplicationRecord
  belongs_to :user

  has_many :recipe_foods, dependent: :delete_all

  validates :name, presence: true
  validates :name, presence: true, length: { maximum: 250 }
  validates :description, length: { maximum: 6000 }
  validates :preparation_time, numericality: { greater_than_or_equal_to: 0 }
  validates :cooking_time, numericality: { greater_than_or_equal_to: 0 }
end
