FactoryBot.define do
  factory :product do
    name      { Faker::Lorem.sentence(3) }
    type      { %w[ski luggage golf].sample }
    length    { rand(25...80) }
    height    { rand(7..20) }
    width     { rand(7..20) }
    weight    { rand(25...70) }
  end
end
