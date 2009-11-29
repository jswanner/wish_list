require 'test_helper'

class EventTest < ActiveSupport::TestCase
  context 'The Event class' do
    setup do
      @event = Factory(:event)
    end
    subject { @event  }

    should_have_many            :attendings
    should_have_many            :users,     :through => :attendings
    should_validate_presence_of :title
  end
end
