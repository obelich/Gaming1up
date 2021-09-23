# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create({name: "client"})
Role.create({name: "administrator"})

categories = Category.create([{id: 1, name: 'Nintendo Switch'}, {id: 2, name: 'Xbox'}, {id: 3, name: 'PlayStation'}])
User.create({email: 'client@gaming1up.com', password: "test@gaming", password_confirmation: "test@gaming"})

admin = User.create({email: 'admin@gaming1up.com', password: "test@gaming", password_confirmation: "test@gaming"})
admin.remove_role :client
admin.add_role :administrator

