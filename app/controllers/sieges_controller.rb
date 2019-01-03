class SiegesController < ApplicationController

def new
	@siege = Siege.new
	@player = Player.find(params[:id])
	@players = Player.all
	@cities = City.all
	@khans = Khan.all
end

def create
@siege = Siege.create(siege_params)
redirect_to action: "display", id: "#{@siege.id}"
end

def display
@siege = Siege.find(params[:id])
@khan = Khan.find(@siege.khan_id)
@city = City.find(@siege.city_id)
@player = Player.find(@siege.player_id)
render :show
end

def resolve

	@siege = Siege.find(params[:id])
	@attacker = Khan.find(@siege.khan_id)
	@city = City.find(@siege.city_id)

	victory_threshold = @city.defenders*1.5

	if @attacker.army_size > victory_threshold
		@winner = @attacker
		@loser = @city
	else
		@winner = @city
		@loser = @attacker
	end	


	render :results
end


private
def siege_params
	params.require(:siege).permit(:khan_id, :city_id, :player_id)

end

end#end of class


