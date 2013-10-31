FactoryGirl.define do
  factory :expense do |f|
    cost "100"
    spent_on Time.now
  end
end