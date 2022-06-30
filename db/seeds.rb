Animal.destroy_all


60.times do |i|
  names = [Faker::Creature::Cat.name, Faker::Creature::Dog.name]
  breeds = [Faker::Creature::Cat.breed, Faker::Creature::Dog.breed]

  animal = Animal.create!(name: names.sample , breed: breeds.sample , age: Faker::Number.between(from: 1, to: 30))
  p "name: #{animal.name}, breed: #{animal.breed}, age: #{animal.age}"
end

p "Created #{Animal.count} animals."