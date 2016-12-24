# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
DatabaseCleaner.clean_with :truncation

puts "Creating Users"
admin = FactoryGirl.create(:user, email: "admin@gmail.com", encrypted_password: "password", admin: true)
facebook_user = FactoryGirl.create(:user, email: "facebook_user@facebook.com", encrypted_password: "password")
puts "Created Users"

puts "Creating Yoga Companies"
Calendar.all.each do |event|
  FactoryGirl.create_list(event_name:Faker::Company.name + "Studio", event_link: Faker::Internet.email, start_time:   )
