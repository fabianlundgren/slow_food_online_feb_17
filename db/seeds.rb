require 'ffaker'

Restaurant.delete_all

5.times do
  name= FFaker::Address.country + " Restaurant",
  street= FFaker::Address.street_name,
  zip_code= FFaker::Address.country_code,
  city= FFaker::Address.city,
  food_style= FFaker::Address.country
  description= FFaker::Address.country

 Restaurant.create(name: name,
                   street: street,
                   zip_code: zip_code,
                   city: city,
                   food_style: food_style,
                   description: description)

end

puts "Created #{Restaurant.count} restaurants"
