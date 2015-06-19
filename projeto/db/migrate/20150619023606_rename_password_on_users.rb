class RenamePasswordOnUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :senha,:senha_digest
  end
end
