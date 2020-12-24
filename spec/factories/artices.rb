FactoryBot.define do
  factory :artice do
    sequence(:slug) { |n| "MyString #{n}" }
    sequence(:title) { |n| "MyString #{n}" }
    sequence(:content) { |c| "MyText #{c}" }
  end
end
