class AddDefaultValues < ActiveRecord::Migration[5.2]
  def change 
  	change_column :players, :exp, :integer, :default => 0
  	change_column :players, :gold, :integer, :default => 0
  	change_column :players, :khan_id, :integer, :default => 1
  	change_column :players, :email, :string, :default => ""
  	change_column :players, :password_digest, :string, :default => ""
  	change_column :players, :gender, :string, :default => ""
  end
end
