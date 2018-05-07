FactoryBot.define do
  factory(:quote) do
    author(Faker::TheFreshPrinceOfBelAir.character)
    content('Cheese')
  end
end
