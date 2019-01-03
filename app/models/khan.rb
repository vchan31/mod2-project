class Khan < ApplicationRecord
	has_many :attacked_khans, foreign_key: :attacker_id, class_name: 'Battle'
	has_many :attackees, through: :attacked_khans

	has_many :attacking_khans, foreign_key: :attackee_id, class_name: 'Battle'
	has_many :attackers, through: :attacking_khans

	has_many :sieges
	has_many :cities, through: :sieges

	has_many :players


def attack_enemy(arg)
	
end



end
