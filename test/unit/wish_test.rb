require 'test_helper'

class WishTest < ActiveSupport::TestCase
  context 'The Wish class' do
    setup do
      @wish = Factory(:wish)
    end
    subject { @wish }

    should_belong_to            :user
    should_validate_presence_of :title
  end
end
