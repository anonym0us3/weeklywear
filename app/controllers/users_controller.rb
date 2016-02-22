class UsersController < ApplicationController

  # Display list of users
  def index
    @users = User.all
  end

  # Display signup form for creating new user
  def new
    @user = User.new
  end

  # Process form data & create new user; login & redirect to user's page
  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
  end

  # Display 1 specific user, by ID
  def show
    @user = User.find_by_id(params[:id])
  end

  private

  # Whitelist of permitted form data
  def user_params
    params.require(:user).permit(:username, :email, :password, :avatar)
  end

end
