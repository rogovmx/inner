class CreateDeskprofs < ActiveRecord::Migration
  def self.up
    create_table :deskprofs do |t|
      t.integer :user_id
      t.string :nic
      t.string :job
      t.integer :deskavatar_id

      t.timestamps
    end
  end

  def self.down
    drop_table :deskprofs
  end
end
