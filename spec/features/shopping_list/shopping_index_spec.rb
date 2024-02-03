require 'rails_helper'

RSpec.describe 'shopping_lists/index', type: :view do
  before(:each) do
    coconut_food = double('Food', name: 'Coconut', measurement_unit: 'kg', price: 2.5)
    coconut_ingredient = double('Ingredient', food: coconut_food, quantity: 2)

    assign(:ingredients, { 'Coconut' => [coconut_ingredient] })
    assign(:missing_numbers, { 'Coconut' => 2 })
    assign(:total_price, 5.0)

    render
  end

  it 'renders the shopping list heading' do
    expect(rendered).to have_selector('h1', text: 'Shopping List')
  end

  it 'renders the amount of food items to buy' do
    expect(rendered).to have_content('Total: $5.00 - 1 items')
  end

  it 'renders the total value of food needed' do
    expect(rendered).to have_content('Total: $5.00 - 1 items')
  end

  it 'renders the table headers' do
    expect(rendered).to have_selector('thead th', text: 'Name')
    expect(rendered).to have_selector('thead th', text: 'Quantity')
    expect(rendered).to have_selector('thead th', text: 'Price')
  end

  it 'renders the food name in the table' do
    expect(rendered).to have_selector('tbody td', text: 'Coconut')
  end

  it 'renders the quantity and measurement unit in the table' do
    expect(rendered).to have_selector('tbody td', text: '2 x kg')
  end

  it 'renders the total price in the table' do
    expect(rendered).to have_selector('tbody td', text: '$5.00')
  end
end
