class PlayersController < ApplicationController


def index
@players = Player.all
	
end

def new
@player = Player.new
end

def show
@player = Player.find(params[:id])

end

def create
	@player = Player.create(player_params)

	redirect_to "/players/action/#{@player.id}"

end	

def show_action
	# return head(:forbidden) unless session.include? :user_id
	if @player = Player.find_by(name:params[:name])
		else @player = Player.find(params[:id])
		end
	render :action_page
end

def update
@player = Player.find(params[:id])

@player.update(join_params)

redirect_to @player
end

def join_khan
	@player = Player.find(params[:id])
	@khans = Khan.all
	render :join
end

private

	def player_params
  		params.require(:player).permit(:name, :age, :bio, :vocation, :gender)
	end

	def join_params
		params.require(:player).permit(:khan_id)
	end

	

end # of player class
