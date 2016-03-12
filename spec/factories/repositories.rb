FactoryGirl.define do

  factory :repository do
    name { Faker::Company.name }
    active {[true,false].sample}
    provider { ["bitbucket", "github"].sample }
    url {Faker::Internet.url("#{provider}.com")}
    user
  end

end
