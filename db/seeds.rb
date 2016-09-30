# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
	user_type: "admin",
	first_name: "Kyle",
	last_name: "Kremski",
	password_hash: "$$$$",
	email: "kkremski@gmail.com",
	zip: 60647
	)


User.create(
	user_type: "admin",
	first_name: "Rob",
	last_name: "Dale",
	password_hash: "$$$$",
	email: "robzd1@gmail.com",
	zip: 60647
	)
