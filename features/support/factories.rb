FactoryGirl.define do
  factory :valid_friend, :class => User do
    name 'Valid Friend'
    latitude '10'
    longitude '10'
  end

  factory :invalid_friend, :class => User do
    name 'Invalid Friend'
    latitude '150'
    longitude '200'
  end
end
