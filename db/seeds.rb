require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  User.create(name: "pedro", email: "p@ed.ro")
end

Users.each do |user|
  user.posts << Post.create(body: "Lorum Ipsum yum yum yum")
end

Post.each do |post|
  post.comments << Comment.create(body: "Say whaaaa", user_id: rand(1..5))
end
