class UsersController < ApplicationController

  before_action :logged_in?, only: [:index, :edit, :show]

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
    if @user.save
      flash[:notice] = "Successfully created user"
      login(@user)
      redirect_to @user
    else
      flash[:error] = @user.errors.full_messages.join(', ')
      redirect_to new_user_path
    end
  end

  # Display 1 specific user, by ID
  def show
    @user = find_user
  end

  def edit
    @user = find_user
  end

  def update
    user = find_user
    user.update_attributes(user_params)
    if user.save
      flash[:notice] = "Profile updated successfully!"

      redirect_to user_path
    else
      flash[:error] = "Please use proper of email & password."

      redirect_to edit_user_path
    end
  end

  def destroy
    user = find_user
    user.destroy

    redirect_to root_path
  end


  private

  # Whitelist of permitted form data
  def user_params
    params.require(:user).permit(:username, :email, :password, :avatar)
  end

  # Dunno if this is appropriate, but attempting DRYness for show, edit, update, destroy methods
  def find_user
    User.find_by_id(params[:id])
  end

end
