# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pitch.destroy_all

10.times do
  Pitch.create(name: Faker::App.name, description: Faker::Lorem.paragraph, student_id: 1, round_id: 1)
end
10.times do
  Pitch.create(name: Faker::App.name, description: Faker::Lorem.paragraph, student_id: 2, round_id: 1)
end

Cohort.destroy_all
Student.destroy_all

Admin.create(
  :first_name => "Uber",
  :last_name => "Admin",
  :email => "admin@hello.com",
  :password => "password"
  )

Cohort.create(name: "Bumblebee", active: "true", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12", stage_id:0)

Cohort.create(name: "Fireball", active: "false", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12", stage_id:0)

Cohort.create(name: "Fox", active: "true", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12", stage_id:0)
Student.create(
  :first_name => "Uber",
  :last_name => "Student",
  :email => "student@hello.com",
  :cohort => Cohort.last,
  :password => "password"
  )
10.times do
  student = {
    :first_name => Faker::Name.first_name,
    :last_name => Faker::Name.last_name,
    :email => Faker::Internet.email,
    :cohort => Cohort.first,
    :password => 'password'
  }
  Student.create(student)
end

10.times do
  Pitch.create(name: Faker::App.name, description: Faker::Lorem.paragraph, student_id: 2, round_id: 0)
end


20.times do
  Pitch.create(name: Faker::App.name, description: Faker::Lorem.paragraph, student_id: rand(1..10), round_id: 1)
end

