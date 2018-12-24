class PlayersController < ApplicationController

def index
@players = Player.all
	
end

def show
@player = Player.find(params[:id])

end

def create
end




private
	def player_params
		params.require(:player).permit(:name, :bio, :age, :vocation, :gender)
	end

end # of player class
