require 'rails_helper'

RSpec.describe User, type: :model do
  def valid_user
    User.new(name: 'Patricio', email: 'patricio@email.com')
  end

  describe 'creates user entry' do
    context 'invalid email address' do
      it 'empty email field' do
        user = User.new(name: 'Patricio')
        expect(user).to be_valid
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
        user = valid_user
        expect(user).to be_valid
      end
    end
  end

  describe 'destroy dependent relationships' do
    before do
      @user = valid_user
      @user.save!
      Dog.create!(name: 'Rex', owner: @user)
      dog = Dog.create!(name: 'Leila', owner: @user)
      dog.add_like_by(@user)
    end

    it 'destroy dependent dogs' do
      expect(@user.dogs).not_to be_empty
      @user.destroy!
      expect(@user.dogs).to be_empty
    end

    it 'destroy dependent likes' do
      expect(@user.likes).not_to be_empty
      @user.destroy!
      expect(@user.likes).to be_empty
    end
  end
end
