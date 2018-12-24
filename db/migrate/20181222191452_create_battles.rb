class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.integer :attacker_id
      t.integer :attackee_id

      t.timestamps
    end
  end
end
