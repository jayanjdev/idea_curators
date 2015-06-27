FactoryGirl.define do
  factory :lead do
    sequence :subject do |n|
      "Subject #{n}"
    end
    sequence :tags do |n|
      "tag #{n}, tag #{n+1}"
    end
    sequence :source do |n|
      "source #{n}"
    end
    association :user
    sequence :details do |n|
      "details  #{n}"
    end
  end
end
