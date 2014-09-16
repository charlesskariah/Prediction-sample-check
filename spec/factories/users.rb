# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :user_invalid,class: User do
    email 'cskariah@ymail.com'
  end
  factory :user do
  end
end
