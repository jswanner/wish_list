require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context 'The User class' do
    setup do
      @user = Factory(:user)
    end
    subject { @user }

    should_have_many              :wishes
    should_have_many              :attendings
    should_have_many              :events,    :through => :attendings
    should_validate_presence_of   :username,  :email
    should_validate_uniqueness_of :username,  :email
  end
end
