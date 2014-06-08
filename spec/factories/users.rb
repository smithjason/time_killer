# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email {"T@t.com"}
  	password {"t"}
  end
end
