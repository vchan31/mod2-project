class AddPlayeridToBattles < ActiveRecord::Migration[5.2]
  def change
    add_column :battles, :player_id, :integer
  end
end
