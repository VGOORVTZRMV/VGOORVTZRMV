# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = ENV['password']

User.create(
	email: 'bohdan.malets@gmail.com',
	password: password,
	password_confirmation: password
)

User.create(
	email: 'auiaepdrhp@gmail.com',
	password: password,
	password_confirmation: password
)
