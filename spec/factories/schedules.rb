FactoryBot.define do
  factory :schedule do
    starts_at { Faker::Date.between(from: 2.days.ago, to: Date.today)    }
    ends_at { Faker::Date.between(from: 1.days.ago, to: Date.today)     }
  end  
end