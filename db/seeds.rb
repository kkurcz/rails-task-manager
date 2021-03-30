# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do
  t = Task.create!(
    title: Faker::JapaneseMedia::DragonBall.character,
    details: Faker::JapaneseMedia::DragonBall.planet,
    completed: false
    )
  puts "Task #{t.title} with details #{t.details} is created, complete: #{t.completed}"
end


