# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all

number_of_contacts = 20
contacts = []

number_of_contacts.times do |i|
    new_contact = {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name, 
        phone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email,
    }
    contacts.push(new_contact)
end

Contact.create(contacts)

p "#{number_of_contacts} contacts created"
