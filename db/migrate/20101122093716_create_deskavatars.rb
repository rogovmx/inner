class CreateDeskavatars < ActiveRecord::Migration
  def self.up
    create_table :deskavatars do |t|
    t.string :img
    t.integer :deskprof_id
    t.integer :redaktor
      t.timestamps
    end
  end

  def self.down
    drop_table :deskavatars
  end
end
