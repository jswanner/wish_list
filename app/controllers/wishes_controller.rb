class WishesController < ApplicationController
  def show
    @wish = @user.wishes.find(params[:id])
  end

  def new
    @wish = @user.wishes.new
  end

  def edit
    @wish = @user.wishes.find(params[:id])
  end

  def create
    @wish = @user.wishes.new(params[:wish])

    if @wish.save
      flash[:notice] = 'Wish was successfully created.'
      redirect_to(@user)
    else
      render :action => "new"
    end
  end

  def update
    @wish = @user.wishes.find(params[:id])

    if @wish.update_attributes(params[:wish])
      flash[:notice] = 'Wish was successfully updated.'
      redirect_to([@user, @wish])
    else
      render :action => "edit"
    end
  end

  def destroy
    @wish = @user.wishes.find(params[:id])
    @wish.destroy
    flash[:notice] = 'Wish was removed'

    redirect_to(@user)
  end

  private

  def get_user
    @user = User.find_by_username(params[:user_id])
  end
  before_filter :get_user

end
