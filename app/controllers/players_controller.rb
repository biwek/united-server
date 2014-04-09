class PlayersController < ApplicationController
	respond_to :html, :xml, :json

	
	def index
	end

	def firstteam
		@players = Player.all
		respond_with(@players)
		# render json: @players
	end

	def new 
		@player = Player.new
	end

	def create 
		@player = Player.new(player_params) 
		if @player.save
			redirect_to root_path
		end
	end

	private
  def player_params
    params.require(:player).permit(:name, :team, :wiki, :dob, :squadno, :position)
  end

end
