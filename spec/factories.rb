FactoryGirl.define do
  factory :user do
    name     "Ronnie Brown"
    email    "ronnievoice@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end