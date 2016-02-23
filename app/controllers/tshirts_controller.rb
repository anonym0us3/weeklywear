class TshirtsController < ApplicationController

  # Display list of t-shirts
  def index
    @tshirts = Tshirt.all
  end

  def new
    @tshirt = Tshirt.new
  end


  def create
    @tshirt = Tshirt.new(tshirt_params)
    @tshirt.save

    redirect_to tshirts_path
  end

  # Display 1 specific tshirt, by ID
  def show
    @tshirt = Tshirt.find_by_id(params[:id])
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

end
