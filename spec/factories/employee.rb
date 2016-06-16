FactoryGirl.define do
  factory :employee do
    association :department
    name { Faker::Name.name }
    email { Faker::Internet.email}
  end
end
