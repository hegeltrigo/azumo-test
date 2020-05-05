FactoryBot.define do
  factory :schedule_day do
    starts_at { Faker::Date.between(from: 2.days.ago, to: Date.today)    }
    schedule
  end  
end