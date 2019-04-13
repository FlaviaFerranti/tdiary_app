# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Administrator",
            nickname: "Admin",
            email: "traveldiarywebapp@gmail.com",
            password: "password",
            confirmed_at: Date.today,
            admin: true)

50.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@hotmail.it"
    password = "password"
    User.create!(name: name,
                email: email,
                nickname: Faker::Internet.user_name(name),
                password: password,
                confirmed_at: Date.today)
end

users = User.order(:created_at).take(6)
users.each { |user| user.travels.create!(title: Faker::Lorem.sentence,
                                         location: Faker::Address.city,
                                         description: Faker::Lorem.paragraph(1)) }


users = User.all
user = users.first
following = users[13..50]
followers = users[8..36]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

user2 = users.second
following = users[4..20]
followers = users[8..44]
following.each { |followed| user2.follow(followed) }
followers.each { |follower| follower.follow(user2) }

user3 = users.third
following = users[22..42]
followers = users[5..48]
following.each { |followed| user3.follow(followed) }
followers.each { |follower| follower.follow(user3) }
