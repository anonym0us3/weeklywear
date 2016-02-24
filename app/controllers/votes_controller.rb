class VotesController < ApplicationController

  def index
    @user = User.find_by_id(params[:user_id])
    @tshirts = Tshirt.all
  end

  def create
    @vote = Vote.new(:user_id => current_user.id, :tshirt_id => params[:tshirt_id])
    @vote.save

    redirect_to users_path
  end

end
