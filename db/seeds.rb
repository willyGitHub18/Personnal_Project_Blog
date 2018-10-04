# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([{ name: "New-Zealand" }, { name: "Thailand" }, { name: "Laos" }, { name: "Vietnam" }, { name: "Cambodia" }, { name: "Philippines" }, { name: "Japan" }, { name: "USA" }, { name: "Peru" }, { name: "Bolivia" }, { name: "Argentina" }, { name: "Chile" }])

# Make the first (and only) user an admin
User.create!(name:  ENV['USERNAME'],
             email: ENV['EMAIL'],
             password:              ENV['MOT_DE_PASSE'],
             password_confirmation: ENV['MOT_DE_PASSE'],
             admin: true)
