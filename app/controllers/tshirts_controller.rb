class TshirtsController < ApplicationController

  def index
    @tshirts = Tshirt.all
    @user = @current_user
    # @tshirts = @user.tshirts
  end

  def new
    @tshirt = Tshirt.new
  end


  def create
    @tshirt = Tshirt.create(tshirt_params)

    redirect_to tshirts_path
  end

  # Display 1 specific tshirt, by ID
  def show
    @tshirt = Tshirt.find_by_id(params[:id])
  end

  private

  # Whitelist of permitted form data
  def tshirt_params
    params.require(:tshirt).permit(:name, :image)
  end

end
