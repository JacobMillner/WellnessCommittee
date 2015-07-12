class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_wuser!
  before_filter :isAdmin?
  respond_to :html

  def index
    @players = Player.all
	@player = Player.new
	respond_with(@player, @players)
  end

  def show
    respond_with(@player)
  end

  def new
    @player = Player.new
    respond_with(@player)
  end

  def edit
  end

  def create
    @player = Player.new(player_params)
    @player.save
    #respond_with(@player)
	redirect_to action: "index"
  end

  def update
    @player.update(player_params)
    respond_with(@player)
  end

  def destroy
    @player.destroy
    respond_with(@player)
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.require(:player).permit(:fullName, :points, :shoptechEmail)
    end
	
	def isAdmin?
    	if current_wuser.isAdmin?
      		true
    	else
      		render :text => 'You must be an admin to do this. If you are recieving this as an error,
                        please contact the E2 Wellness committee.'
   		end
   end
	
end
