class Battle < ApplicationRecord
	belongs_to :attacker, class_name: 'Khan'
	belongs_to :attackee, class_name: 'Khan'


end
