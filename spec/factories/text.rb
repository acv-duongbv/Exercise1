FactoryGirl.define do
  factory :user do
    headline {Faker::Music.key}
    arrange {Faker::Number.number(2)}
    sentence {Faker::Music.album}
    liked {Faker::Number.number(1)}
  end
end 