FactoryGirl.define do
  factory :user do
    sequence :name do |n|
      "Test User #{n}"
    end
    sequence :email do |n|
      "test#{n}@example.com"
    end
    password "please123"

    trait :admin do
      role 'admin'
    end
  end
end
