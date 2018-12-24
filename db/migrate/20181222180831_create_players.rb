class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.text :bio
      t.integer :age
      t.string :vocation
      t.integer :exp
      t.string :gender
      t.integer :gold
      t.integer :khan_id

      t.timestamps
    end
  end
end
