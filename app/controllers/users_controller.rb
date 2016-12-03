class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def followers
    @user =  User.find(params[:id])
    @followings = @user.followed_users
    @followers = @user.followers
  end
end
