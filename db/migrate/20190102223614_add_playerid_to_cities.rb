class AddPlayeridToCities < ActiveRecord::Migration[5.2]
  def change
  	add_column :sieges, :player_id, :integer
  end
end
