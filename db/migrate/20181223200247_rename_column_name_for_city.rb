class RenameColumnNameForCity < ActiveRecord::Migration[5.2]
  def change 
  	rename_column :cities, :Khan_id, :khan_id
  end
end
