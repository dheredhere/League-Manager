# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

#make leagues
%w(Intramural Intermediate Competitive).each do |name|
  League.create name: name, creator_id: 1 
end

#make players
%w(Federer Nadal Murray Henman Djokovic).each do |name|
  User.create name: name, email: name+"@league.com", password: 'password', password_confirmation: 'password', league_id: 2
end


