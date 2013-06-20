class CreateDep1s < ActiveRecord::Migration
  def self.up
    create_table :dep1s do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :dep1s
  end
end
