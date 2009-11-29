require 'test_helper'

class AttendingTest < ActiveSupport::TestCase
  context 'The Attending class' do
    setup do
      @attending = Factory(:attending)
    end
    subject { @attending  }

    should_belong_to  :event
  end
end
