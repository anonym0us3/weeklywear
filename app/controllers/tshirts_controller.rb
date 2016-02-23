class TshirtsController < ApplicationController

  # Display list of t-shirts
  def index
    @tshirts = Tshirt.all
  end

  # Show signup form for adding new t-shirt
  def new
    @tshirt = Tshirt.new
  end

  # Process form data & create new t-shirt; login & redirect to user's t-shirt management page
  def create
    @tshirt = Tshirt.new(tshirt_params)
    @tshirt.save

    redirect_to user_tshirts_path(current_user)
  end

  def show
    @tshirt = find_tshirt
  end

  def edit
    @tshirt = find_tshirt
  end

  def update
    tshirt = find_tshirt
    tshirt.update_attributes(tshirt_params)

    redirect_to user_tshirts_path(current_user)
  end

  def destroy
    @tshirt = find_tshirt
    @tshirt.destroy

    redirect_to user_tshirts_path(current_user)
  end

  def user_tshirts
    @user = User.find_by_id(params[:user_id])
    @tshirts = Tshirt.all
  end


  private

  # Whitelist of permitted form data
  def tshirt_params
    params.require(:tshirt).permit(:name, :image).merge(:user_id => current_user.id)
  end

  # Attempting DRYness for show, edit, update, destroy methods
  def find_tshirt
    Tshirt.find_by_id(params[:id])
  end

end
