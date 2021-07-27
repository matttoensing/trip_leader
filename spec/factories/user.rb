FactoryBot.define do
  factory :user do
    username { Faker::Internet.username(specifier: 5..8) }
    email { Faker::Internet.email(domain: 'example') }
    password { Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true) }
  end
end
