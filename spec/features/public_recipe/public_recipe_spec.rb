require 'rails_helper'

RSpec.describe 'When I open user index page', type: :feature do
  before(:each) do
    User.delete_all
    @user1 = User.create(name: 'Lily', email: 'lily@example.com', password: 'topsecret')
    @user2 = User.create(name: 'Dave', email: 'dave@example.com', password: 'topsecret')

    @user1.confirm
    @user2.confirm
    sleep(1)

    visit new_user_session_path
    fill_in 'Email', with: 'lily@example.com'
    fill_in 'Password', with: 'topsecret'
    click_button 'Log in'
    sleep(1)

    @food1 = Food.create(user: @user2, name: 'Apple', measurement_unit: 'kg', price: 10, quantity: 4)
    @food2 = Food.create(user: @user2, name: 'Pear', measurement_unit: 'kg', price: 10, quantity: 5)
    @recipe1 = Recipe.create(user: @user1, name: 'Japanese Salad', description: 'I love this recipe very much! ' * 5,
                             preparation_time: 0, cooking_time: 0, public: true)
    @recipe2 = Recipe.create(user: @user2, name: 'Greek Salad', description: 'This is my favourite salad!',
                             preparation_time: 0, cooking_time: 0, public: true)
    @recipe3 = Recipe.create(user: @user2, name: 'Ceaser Salad', description: 'Delicious food!',
                             preparation_time: 0, cooking_time: 0, public: false)

    @recipe_food1 = RecipeFood.create(recipe: @recipe2, food: @food1, quantity: 3)
    @recipe_food2 = RecipeFood.create(recipe: @recipe2, food: @food2, quantity: 7)
    visit(public_recipes_path)
  end

  it 'renders page correctly' do
    expect(page).to have_http_status :ok
  end

  it 'shows the names of all public recipes' do
    expect(page).to have_content('Greek Salad')
    expect(page).to have_content('Japanese Salad')
    expect(page).to_not have_content('Ceaser Salad')
  end

  it 'calculates and shows the correct Total food items' do
    expect(page).to have_content('Total food items: 2')
  end

  it 'calculates and shows the correct Total price' do
    expect(page).to have_content('Total price: 100')
  end

  it 'shows the REMOVE button 1 time' do
    expect(page).to have_button('REMOVE', count: 1)
  end

  context 'When I click on the recipe that is not mine' do
    it "doesn't show Private/Public toggle button" do
      click_link('Greek Salad')
      expect(page).to_not have_button('Private')
      expect(page).to_not have_button('Public')
    end

    it "doesn't show Add Ingredient link" do
      click_link('Greek Salad')
      expect(page).to_not have_link('Add Ingredient', href: new_recipe_recipe_food_path(@recipe2))
    end

    it "doesn't show Generate Shopping List link" do
      click_link('Greek Salad')
      expect(page).to_not have_link('Generate Shopping List', href: shopping_lists_path)
    end
  end
end
