class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, notice: 'Successfully added friend!'
    else
      redirect_to root_path, alert: "Error adding friend: invalid coordinates"
    end
  end

  def nearest_friends
    @friends = User.limit(3)
  end
end
