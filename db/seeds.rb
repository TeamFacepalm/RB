# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Fabricator(:user) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email { Faker::Internet.email }
  ssn { Faker::IDNumber.ssn_valid }
  dob { Faker::Date.birthday(min_age = 18, max_age = 100) }
  district_id { Faker::Number.between(1, 10) }
  auth_token { Faker::Lorem.characters(10) }
  password_digest { Faker::Internet.password(8) }
end

# 5.times { Fabricate(:user) }
