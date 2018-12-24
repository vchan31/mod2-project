class City < ApplicationRecord
	belongs_to :khan

	has_many :sieges
	has_many :khans, through: :sieges

end
