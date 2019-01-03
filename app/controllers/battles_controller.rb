class BattlesController < ApplicationController

def new
	@battle = Battle.new
	@player = Player.find(params[:id])
	@players = Player.all
	@your_khan = @player.khan.id
	@khans = Khan.all


end

def create

@battle = Battle.create(battle_params)
redirect_to action: "display", id: "#{@battle.id}"

end

def display
@battle = Battle.find(params[:id])
@attacker = Khan.find(@battle.attacker_id)
@attackee = Khan.find(@battle.attackee_id)
@player = Player.find(@battle.player_id)
render :show
end


def resolve
	@battle = Battle.find(params[:id])
	khans = Khan.all

	attacker = Khan.find(@battle.attacker_id)
	attackee = Khan.find(@battle.attackee_id)
	player = Player.find(@battle.player_id)

	a_advantage = 0
	b_advantage = 0

	if attacker.army_size > attackee.army_size
		a_advantage += 1 
	else b_advantage += 1
		end

	if attacker.experience > attackee.experience
			a_advantage += 1 
		else b_advantage += 1
			end

	if attacker.rating_star > attackee.rating_star
		a_advantage += 1 
		else b_advantage += 1
			end

	if a_advantage > b_advantage
		@winner = attacker
		@loser = attackee
	else @winner = attackee
		 @loser = attacker

	end	

	if @winner == attacker
		player.gold += 400
		player.exp += 10

	else
		player.gold -= 300
		player.exp += 2
	end

troop_loss_winner = @winner.army_size*0.25
troop_loss_loser = @loser.army_size*0.5

@winner.army_size -= troop_loss_winner
@loser.army_size -= troop_loss_loser

@winner.experience += 2
@winner.rating_star += 1

@loser.experience += 1
@loser.rating_star -= 1

@winner.gold += 1000
@loser.gold -= 500

@winner.save
@loser.save
player.save
render :results
end #of resolve definition


private


def battle_params
	params.require(:battle).permit(:attacker_id, :attackee_id, :player_id)

end


end#class end
