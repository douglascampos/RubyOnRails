class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps null: false
    end
    
    add_index :users, :email, :unique => true
  end
end
