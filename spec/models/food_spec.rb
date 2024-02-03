require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'is valid with valid attributes' do
    user = User.create(name: 'Mike', email: 'Mikemy@example.com', password: 'Recipe123')
    food = Food.new(
      name: 'Oranges',
      measurement_unit: 'kg',
      price: 12.30,
      user:
    )
    expect(food).to be_valid
  end

  it 'is not valid without a name' do
    food = Food.new(measurement_unit: 'kg', price: 12.30)
    expect(food).not_to be_valid
  end

  it 'is not valid without a measurement unit' do
    food = Food.new(name: 'Oranges', price: 12.30)
    expect(food).not_to be_valid
  end

  it 'is not valid without a price' do
    food = Food.new(name: 'Oranges', measurement_unit: 'kg')
    expect(food).not_to be_valid
  end
end
