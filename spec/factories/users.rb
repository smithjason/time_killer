# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	id  {100}
  	email {"T@t.com"}
  	password {"t"}
  end
end
