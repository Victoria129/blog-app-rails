class UsersController < ApplicationController
  def index
    @users = User.includes(:posts)
  end

  def show
    @user = User.find(params[:id])
    @recent_posts = @user.return_three_most_recent_posts
  end
end
