class RemoveColumnFromCities < ActiveRecord::Migration[5.2]
  def change
  	remove_column :cities, :khan_id
  end
end
