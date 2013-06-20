class CreateStatus1s < ActiveRecord::Migration
  def self.up
    create_table :status1s do |t|
      t.string :name
      t.string :date
      t.integer :status
      t.string :subst

      t.timestamps
    end
  end

  def self.down
    drop_table :status1s
  end
end
