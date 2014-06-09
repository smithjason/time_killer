FactoryGirl.define do
  factory :user do
  	sequence(:email) {|n| "t#{n}@t.com"}
  	password {"t"}
  end
end