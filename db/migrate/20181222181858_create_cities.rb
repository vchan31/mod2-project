class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.integer :Khan_id
      t.integer :wealth
      t.integer :population
      t.integer :defenders
      t.text :bio

      t.timestamps
    end
  end
end
