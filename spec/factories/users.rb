FactoryGirl.define do
  factory :user do |f|
    f.first_name "John"
    f.last_name "Doe"
    f.email "g@g.com"
    password "123123123"
    password_confirmation { "123123123" }
  end
end