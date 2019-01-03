class City < ApplicationRecord


	has_many :sieges
	has_many :khans, through: :sieges

end
