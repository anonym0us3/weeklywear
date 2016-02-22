class TshirtsController < ApplicationController

  def index
    @tshirts = Tshirt.all
  end

  def new
    @tshirt = Tshirt.new
  end
  
end
