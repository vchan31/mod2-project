class CreateSieges < ActiveRecord::Migration[5.2]
  def change
    create_table :sieges do |t|
      t.integer :khan_id
      t.integer :city_id

      t.timestamps
    end
  end
end
