class PlayersController < ApplicationController
	before_action :set_link, only: [:show, :edit, :update, :destroy]

	def index
		@players = Players.all
	end
	
	def new
		@player = Players.new
    end
	
	def create
		@player = Players.new(player_params)

    	respond_to do |format|
			if @player.save
		    	format.html { redirect_to @player, notice: 'Player was successfully created.' }
				format.json { render :show, status: :created, location: @player }
        	else
        		format.html { render :new }
				format.json { render json: @player.errors, status: :unprocessable_entity }
        	end
    	end
	end
	
	def destroy
		@player.destroy
    	respond_to do |format|
			format.html { redirect_to players_url, notice: 'Player was successfully deleted.' }
        	format.json { head :no_content }
    	end
	end
	
	private
	
	# Never trust parameters from the scary internet, only allow the white list through.
	def player_params
		params.require(:player).permit(:name, :points)
    end
	
end