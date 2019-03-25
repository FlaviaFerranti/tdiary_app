# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Amministratore",
             nickname: "admin",
             email: "example@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name: "Michela Capece",
             nickname: "michela",
             email: "michelacapece96@gmail.com",
             password: "michela",
             password_confirmation: "michela",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name: "Flavia Ferranti",
             nickname: "flavia",
             email: "fla.ferranti97@gmail.com",
             password: "flavia",
             password_confirmation: "flavia",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)



