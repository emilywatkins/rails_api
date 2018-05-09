FactoryBot.define do
  factory :user do
    name "MyString"
    email "MyString"
    password_digest "MyString"
  end
  factory(:quote) do
    author(Faker::TheFreshPrinceOfBelAir.character)
    content('Cheese')
  end
end
