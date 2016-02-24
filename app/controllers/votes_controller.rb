class VotesController < ApplicationController

  def index
    @user = User.find_by_id(params[:user_id])
    @tshirts = Tshirt.all
  end

end
