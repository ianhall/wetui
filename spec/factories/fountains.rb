# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fountain do
    location "MyString"
    photo_uri "MyText"
    updated_by 1
  end
end
