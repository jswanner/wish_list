require 'test_helper'

class UsersTest < ActionController::IntegrationTest
  context 'A logged in user' do
    setup do
      @user = Factory(:user_with_wishes)
      # todo - log in user
    end

    should 'be able to see their wishes' do
      visit user_path(@user)

      assert_match /Wish List/, response.body
      @user.wishes.each { |w| assert_match /#{w.title}/, response.body }
    end

    should 'be able to add to their wishes' do
      @wish = Factory(:wish)
      visit user_path(@user)

      click_link 'Add Wish'

      fill_in 'Title',        :with => @wish.title
      fill_in 'Description',  :with => @wish.description
      fill_in 'Price',        :with => @wish.price
      click_button 'Create Wish'

      assert_equal user_path(@user),                              path
      assert_match /flash_notice.*Wish was successfully created/, response.body
      assert_match /#{@wish.title}/,                              response.body
    end

    should 'be able to view details of a wish' do
      @wish = @user.wishes.first
      visit user_path(@user)

      click_link @wish.title

      assert_equal user_wish_path(@user, @wish),        path
      assert_match /#{@wish.title}/,                    response.body
      assert_match /Description.*#{@wish.description}/, response.body
      assert_match /Price.*#{@wish.price}/,             response.body
    end

    should 'be able to edit details of a wish' do
      @wish = @user.wishes.first
      visit user_wish_path(@user, @wish)

      click_link 'Edit Wish'

      assert_equal edit_user_wish_path(@user, @wish),   path
      assert_match /Title.*#{@wish.title}/,             response.body
      assert_match /Description.*#{@wish.description}/, response.body
      assert_match /Price.*#{@wish.price}/,             response.body

      fill_in 'Title',        :with => 'new wish title'
      fill_in 'Description',  :with => 'new wish description'
      click_button 'Update Wish'

      assert_equal user_wish_path(@user, @wish),  path
      assert_match /new wish title/,              response.body
      assert_match /new wish description/,        response.body
      assert_match /#{@wish.price}/,              response.body
    end
  end
end
