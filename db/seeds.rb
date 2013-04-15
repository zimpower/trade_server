# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Zig Zag', :email => 'zig@zag.com', :password => 'jum747bo', :password_confirmation => 'jum747bo'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Zag Rag', :email => 'zag@rag.com', :password => 'jum747bo', :password_confirmation => 'jum747bo'
puts 'New user created: ' << user2.name