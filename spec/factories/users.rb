FactoryGirl.define do
  factory :user do
    name "MyString"
    email "MyString"
    image "MyString"
  end

  trait :fan_role do 
    association :fan
  end
  trait :artist_role do 
    association :artist
  end

  factory :fan_user, traits: [:fan_role]
  factory :artist_user, traits: [:artist_role]
end
