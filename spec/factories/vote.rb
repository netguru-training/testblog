# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    sequence(:user) {|n| create(:user, name: "user_#{n}") }
  end
end
