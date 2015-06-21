class CorrigePassword < ActiveRecord::Migration
  def change
    rename_column :users, :senha_digest, :password_digest
  end
end
