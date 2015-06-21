class CorrigePassword2 < ActiveRecord::Migration
  def change
  	rename_column :users, :password_digest, :password
  end
end
