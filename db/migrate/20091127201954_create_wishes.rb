class CreateWishes < ActiveRecord::Migration
  def self.up
    create_table :wishes do |t|
      t.integer :user_id,     :null => false
      t.string  :title,       :null => false
      t.text    :description, :null => true
      t.string  :price,       :null => true

      t.timestamps
    end
  end

  def self.down
    drop_table :wishes
  end
end
