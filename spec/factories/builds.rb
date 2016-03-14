
FactoryGirl.define do
  factory :build do
    status { [nil, "success", "fail"].sample }
    started_at { Faker::Time.between(2.days.ago, Time.now, :all) }
    finished_at do
      if status
        Faker::Time.between(started_at, started_at + Random.new.rand(0..10)*60, :all)
      else
        nil
      end
    end
    pull_request

  end
end
