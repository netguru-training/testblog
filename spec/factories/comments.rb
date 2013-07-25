# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    body "lorem lorem"
    association :user
    created_at Time.now
  end
end
