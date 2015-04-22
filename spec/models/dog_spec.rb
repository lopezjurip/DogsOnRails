require 'rails_helper'

RSpec.describe Dog, type: :model do
  it 'can be instantiated' do
    # https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

    dog = Dog.new(name: 'Cachupín')
    expect(dog.name).to eq('Cachupín')
    expect(dog.male).not_to be_nil
    expect(dog.owner).to be_nil
    expect(dog.veterinaries).to be_empty
  end
end
