class AddWishesCountToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :wishes_count, :integer
  end

  def self.down
    remove_column :users, :wishes_count
  end
end
