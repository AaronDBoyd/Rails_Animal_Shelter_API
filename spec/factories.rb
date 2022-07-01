FactoryBot.define do
  factory(:animal) do
    name {Faker::Name.name}
    breed {Faker::Creature::Cat.breed}
    age {Faker::Number.between(from: 1, to: 30)}
  end
end