Factory.define :user do |user|
  user.sequence(:username)  { |n| "username_#{n}" }
  user.sequence(:email)     { |n| "email_#{n}@example.com" }
end

Factory.define :wish do |wish|
  wish.title {  'wish title'  }
end

Factory.define :event do |event|
  event.title { 'event title' }
end
