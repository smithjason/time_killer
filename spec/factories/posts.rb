FactoryGirl.define do
  factory :post do
    association :user_id, factory: :user
    title {"Tommy"}
    content {"Is hungry"}
  end
end