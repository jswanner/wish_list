class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :null => false
      t.string :email,    :null => true

      t.timestamps
    end
    add_index :users, :username,  :unique => true
    #add_index :users, :email,     :unique => true
  end

  def self.down
    remove_index :users, :username
    #remove_index :users, :email
    drop_table :users
  end
end
