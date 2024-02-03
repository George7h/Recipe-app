class ShoppingListsController < ApplicationController
  def index
    @user = current_user
    @recipes = Recipe.where(user: @user)
    @missing_numbers = {}
    @ingredients = RecipeFood.where(recipe: @recipes).group_by { |ingredient| ingredient.food.name }

    @total_price = @ingredients.flat_map do |_food_name, ingredients|
      ingredients.map { |ingredient| ingredient.food.price * ingredient.quantity }
    end.sum
  end
end
