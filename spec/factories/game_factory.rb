require 'factory_girl'

FactoryGirl.define do
  factory :game do
    description { Faker::Lorem.paragraph }
    developer { Faker::Name.name }
    name { Faker::Name.name }
    thumb { File.open("#{ Rails.root }/spec/support/assets/thumb.png") }
    source { File.open("#{ Rails.root }/spec/support/assets/source.swf") }
  end
end