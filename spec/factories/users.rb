FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "anuragmy #{n}" }
    name { "Anurag" }
    url { "http:/asdasd.com" }
    avatar_url { "http:/asdasd.com" }
    provider { "github" }
  end
end
