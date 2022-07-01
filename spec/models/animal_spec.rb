require 'rails_helper'

RSpec.describe Animal, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :age }
  it { should validate_presence_of :breed }

  it 'titleizes the name of an animal' do
    animal = Animal.create(name: 'steve',age: 13, breed: 'pupper')
    expect(animal.name).to eq('Steve')
  end
end
