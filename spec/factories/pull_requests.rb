FactoryGirl.define do
  factory :pull_request do
    title { Faker::Lorem.sentence(4) }
    description { Faker::Lorem.sentence(10) }
    user
    repository
  end
end
