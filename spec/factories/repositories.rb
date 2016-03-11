FactoryGirl.define do

  factory :repository do
    name Faker::Company.name
    active {[true,false].sample}
    provider { ["bitbucket", "github"].sample }
    url "http://github.com/mystring/mystring"
    user
  end

end
