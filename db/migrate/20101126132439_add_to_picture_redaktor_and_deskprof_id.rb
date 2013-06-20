class AddToPictureRedaktorAndDeskprofId < ActiveRecord::Migration
  def self.up
    
    add_column :pictures, :deskprof_id, :integer
  end

  def self.down
 
    remove_column :pictures, :deskprof_id, :integer
  end
end
