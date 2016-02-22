class TshirtsController < ApplicationController

  def index
    @tshirts = Tshirt.all
  end

  def new
    @tshirt = Tshirt.new
  end


  def create
    @tshirt = Tshirt.create(tshirt_params)

    redirect_to tshirts_path
  end

  private

  # Whitelist of permitted form data
  def tshirt_params
    params.require(:tshirt).permit(:name, :image)
  end
  
end
