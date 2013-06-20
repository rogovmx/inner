class CreateOffice1s < ActiveRecord::Migration
  def self.up
    create_table :office1s do |t|

      t.timestamps
      t.string :name
      t.string :last_name
      t.string :patronimic
      t.string :job
      t.string :dep
      t.string :phone
      t.string :mail
      t.string :pic
      t.integer :user_id

    end
  end

  def self.down
    drop_table :office1s
  end
end
