require 'rails_helper'

RSpec.describe User, type: :model do
  it 'does not allow empty email' do
    user = User.new(name: "Patricio")
    expect(user).to be_invalid
  end

  it 'does not allow invalid email' do
    user = User.new(name: 'Patricio', email: 'this is not an email address')
    expect(user).to be_invalid
  end

  it 'allow valid email' do
    user = User.new(name: 'Patricio', email: 'patricio@email.com')
    expect(user).to be_valid
  end

  it 'is invalid with a duplicate email address' do
    User.create(name: 'Joe', email: 'tester@example.com')
    user = User.new(name: 'Jane', email: 'tester@example.com')
    expect(user).to be_invalid
  end
end
