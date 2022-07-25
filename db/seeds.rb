# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

appliances = Department.create!(name: "Appliances", floor: "Basement")
lighting = Department.create!(name: "Lighting", floor: "Basement")
garden = Department.create!(name: "Garden", floor: "One")

ally = Employee.create!(name: "Ally", level: 1, department_id: 1)
bob = Employee.create!(name: "Bob", level: 1, department_id: 1)
chris = Employee.create!(name: "Chris", level: 1, department_id: 2)
molly = Employee.create!(name: "Molly", level: 2, department_id: 3)

# ticket1 = Ticket.create!(subject: "Rearrange sale items", age: 2)
# ticket2 = Ticket.create!(subject: "printers broken", age: 2)
# ticket3 = Ticket.create!(subject: "hole in wall to jupiter", age: 4)
