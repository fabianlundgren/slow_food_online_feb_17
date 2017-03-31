FactoryGirl.define do
  factory :menu do
    name "Lunch"
    association :restaurant
  end
end
