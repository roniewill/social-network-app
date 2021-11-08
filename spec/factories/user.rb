FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone }
    avatar { Rack::Test::UploadedFile.new(Rails.root.join("spec/support/batman.png")) }
    password { Faker::Internet.password }
  end
end