# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

8.times do
  User.create(Faker::Internet.user('username', 'email'))
end

Group.create(name: 'Callback Maybe',location: 'here')
Group.create(name: 'Fetch em All',location: 'here')

Event.create(
  title: 'Happy Hour',
  description: 'I feel fucking crazy!',
  location: 'Wherever you are',
  starts_at: '2022-06-30 20:00:00',
  ends_at: '2022-06-30 22:00:00',
  group: Group.first,
  user: User.last
)