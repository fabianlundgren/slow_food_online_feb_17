FactoryGirl.define do
  factory :dish do
    name "Pizza"
    price 9.99
    association :menu
  end
end
