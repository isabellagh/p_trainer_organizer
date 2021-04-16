# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

30.times do
    
    Client.create(name: Faker::Name.name, age: Faker::Number.between(from: 15, to: 90), gender: ["male", "female"].sample)
end

30.times do
    
    Workout.create(date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'), exercise: Faker::Lorem.words, sets: Faker::Number.between(from: 1, to: 5), reps: Faker::Number.between(from: 5, to: 100), weight: Faker::Number.between(from: 1, to: 200))
end 