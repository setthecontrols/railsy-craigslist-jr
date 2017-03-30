# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Posting.destroy_all

5.times do
  Category.create(name: Faker::HarryPotter.character)
end

@categories = Category.all
@categories.each do |category|
  5.times do
    category.postings << Posting.create(title: Faker::Book.title, price: 5, description: Faker::Hipster.paragraph, location: Faker::LordOfTheRings.location)
  end
end
