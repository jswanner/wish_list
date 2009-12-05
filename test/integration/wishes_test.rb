require 'test_helper'

class WishesTest < ActionController::IntegrationTest
  context 'Wishes show page' do
    should 'replace URL with link' do
      @url1 = 'http://url.com/in/it'
      @url2 = 'http://the.com/another?more=comp_one&bool=yes'
      @url3 = 'http://www.target.com/Designs-Faux-Suede-Inch-Boots/dp/B001TLYWJE/ref=br_1_4?ie=UTF8&frombrowse=1&searchView=grid5&searchNodeID=2236856011&node=2236856011&searchRank=pmrank&searchPage=1&sessionID=185-2142732-2229847&searchSize=30'

      @user = Factory(:user)
      @wish = Factory(
        :wish,
        :user => @user,
        :description => "has a #{@url1}\n but wait #{@url2}\n#{@url3}"
      )
      visit user_wish_path(@user, @wish)

      assert_select 'pre.wish-description' do |desc|
        assert_select 'a', { :href => @url1, :text => @url1 }
        assert_select 'a', { :href => @url2, :text => @url2 }
        assert_select 'a', { :href => @url3, :text => "#{@url3[1..50]}..." }
      end
    end
  end
end
