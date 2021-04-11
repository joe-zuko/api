require_relative "../models/user_model"

FactoryBot.define do
  factory :user, class: UserModel do
    nome { "Joe" }
    cidade { "Tokyo" }
    email { "joe@lalala.com" }
  end

  factory :registered_user, class: UserModel do
    id { 0 }
    nome { Faker::JapaneseMedia::OnePiece.character }
    cidade { Faker::Movies::Hobbit.location }
    email { Faker::Internet.free_email(name: nome) }

    after(:build) do |user|
      result = ApiUser.create(user.to_hash)
      user.id = result.parsed_response["id"]
    end
  end

  factory :not_registered_user, class: UserModel do
    id { 2500 }
    nome { Faker::JapaneseMedia::OnePiece.character }
    cidade { Faker::Movies::Hobbit.location }
    email { Faker::Internet.free_email(name: nome) }
  end
end
