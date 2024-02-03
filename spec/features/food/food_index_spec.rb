require 'rails_helper'

RSpec.feature 'Food List', type: :feature do
  before(:each) do
    User.delete_all
    @user = User.create(name: 'Mike', email: 'Mike@example.com', password: 'Recipes123')
    @user.confirm
    log_in_user('Mike@example.com', 'Recipes123')
  end

  scenario 'User views the Food List page' do
    Food.create(name: 'Coconut', measurement_unit: 'kg', price: '16', user: @user)
    visit foods_path
    expect(page).to have_link('Add Food', href: new_food_path)
    expect(page).to have_selector('tbody tr td', text: 'Coconut')
    expect(page).to have_selector('tbody tr td', text: 'kg')
    expect(page).to have_selector('tbody tr td', text: '16', visible: :all)
    expect(page).to have_button('Delete')
  end

  scenario 'User deletes a food record' do
    Food.create(name: 'Coconut', measurement_unit: 'kg', price: '16', user: @user)
    visit foods_path
    expect(page).to have_button('Delete', count: 1)
    click_button 'Delete'
    expect(Food.count).to eq(0)
  end

  private

  def log_in_user(email, password)
    visit new_user_session_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Log in'
    sleep(1)
  end
end
