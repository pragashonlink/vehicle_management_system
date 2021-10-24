require 'faker'

FactoryBot.define do
  factory :vehicle, class: Vehicle do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    nationality { Faker::Nation.nationality }
    model { Faker::Vehicle.make }
    year { Faker::Vehicle.year }
    chassis_number { Faker::Number.leading_zero_number(digits: 10) }
    color { Faker::Vehicle.color }
    registration_date { Faker::Date.backward }
    odometer_reading { Faker::Vehicle.kilometrage }
  end
end
