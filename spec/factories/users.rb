#覚えるために自身で記述

Factroybot.define do
  factroy :user do
    title{ Faker::Lorem.characters(number: 5) }
    body{ Faker::Lorem.characters(number: 20) }
  end
end