require 'rails_helper'

RSpec.describe User, type: :model do
  context '#create validates required fields' do
    it 'is valid with existing name, email and password' do
      expect(User.create(name: 'Mike', email: 'Mikemy@example.com', password: 'Recipe123')).to be_valid
    end

    it 'is not valid with blank name' do
      expect(User.create(email: 'Mike@example.com', password: 'Recipe123')).to_not be_valid
    end

    it 'is not valid with blank email' do
      expect(User.create(name: 'Mike', password: 'Recipe123')).to_not be_valid
    end

    it 'is not valid with blank password' do
      expect(User.create(name: 'Mike', email: 'Mike@example.com')).to_not be_valid
    end
  end
end
