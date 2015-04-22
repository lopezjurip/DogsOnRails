require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creates user entry' do
    context 'invalid email address' do
      it 'empty email field' do
        user = User.new(name: 'Patricio')
        expect(user).to be_invalid
      end

      it 'email address does not match REGEX' do
        user = User.new(name: 'Patricio', email: 'this is not an email address')
        expect(user).to be_invalid
      end

      it 'a duplicate email address exist' do
        User.create(name: 'Joe', email: 'tester@example.com')
        user = User.new(name: 'Jane', email: 'tester@example.com')
        expect(user).to be_invalid
      end
    end

    context 'enters valid parameters' do
      it 'allow valid email' do
        user = User.new(name: 'Patricio', email: 'patricio@email.com')
        expect(user).to be_valid
      end
    end
  end
end

