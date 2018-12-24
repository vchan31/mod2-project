class CreateKhans < ActiveRecord::Migration[5.2]
  def change
    create_table :khans do |t|
      t.string :name
      t.integer :army_size
      t.integer :gold
      t.integer :experience
      t.text :bio
      t.integer :rating_star

      t.timestamps
    end
  end
end
