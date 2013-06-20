class AddToPicturesUserId < ActiveRecord::Migration
  def self.up
    add_column :pictures, :user_id, :integer
  end

  def self.down
    remove_column :pictures, :user_id, :integer
  end
end
