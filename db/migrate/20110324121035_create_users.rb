class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|

      t.timestamps
       t.string :scr_name
       t.string :name
       t.string :last_name
       t.string :password
    end
  end

  def self.down
    drop_table :users
  end
end
