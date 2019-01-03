class ChangeDefaultKhanInPlayers < ActiveRecord::Migration[5.2]
  def change
  	change_column :players, :khan_id, :integer, :default => 6
  end
end
