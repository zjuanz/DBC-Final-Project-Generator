# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cohort.create(name: "Bumblebee", active: "true", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12")

Cohort.create(name: "Fireball", active: "false", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12")

Cohort.create(name: "Fox", active: "true", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12")

