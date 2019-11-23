# frozen_string_literal: true

FactoryBot.define do
  factory :todo do
    task { Faker::ChuckNorris.fact }
  end
end
