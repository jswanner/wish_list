class CreateAttendings < ActiveRecord::Migration
  def self.up
    create_table :attendings do |t|
      t.integer :event_id,      :null => false
      t.integer :user_id,       :null => false
      t.integer :recipient_id,  :null => true

      t.timestamps
    end
    add_index :attendings, [:event_id, :user_id], :unique => true
  end

  def self.down
    remove_index :attendings, [:event_id, :user_id]
    drop_table :attendings
  end
end
