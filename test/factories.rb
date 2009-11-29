Factory.define :user do |user|
  user.sequence(:username)  { |n| "username_#{n}" }
  user.sequence(:email)     { |n| "email_#{n}@example.com" }
end

Factory.define :wish do |wish|
  wish.sequence(:title) { |n| "wish title ##{n}"  }
  wish.association(:user)
end

Factory.define :event do |event|
  event.title { 'event title' }
end

Factory.define :attending do |attending|
  attending.association(:user)
  attending.association(:event)
end

Factory.define :user_with_attending, :parent => :user do |user|
  user.after_create { |u| Factory(:attending, :user => u) }
end

Factory.define :user_with_wishes, :parent => :user do |user|
  user.after_create { |u| Factory(:wish, :user => u); Factory(:wish, :user => u) }
end
