class TshirtsController < ApplicationController

  def index
    @libraries = Library.all
  end
end
