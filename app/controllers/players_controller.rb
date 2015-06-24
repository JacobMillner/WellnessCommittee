class PlayersController < ApplicationController
  respond_to :html, :json

  def new
	  @player = Players.new
	  respond_modal_with @player
  end

  def create
	  @player = Players.create(category_params)
	  respond_modal_with @player, location: root_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end