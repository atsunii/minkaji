FactoryBot.define do
  factory :house_work do
    date { 2021-02-15 }
    score_id { 2 }
    association :user
  end
end
